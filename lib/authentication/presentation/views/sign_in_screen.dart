import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_extension/riverpod_extension.dart';

import '../../../common/presentation/widgets/hyper_link.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/hooks.dart';
import '../../application/sign_in_screen_controller.dart';
import '../../application/sign_in_state.dart';

/// The [SignInScreen] shown to the user on initial app load.
class SignInScreen extends HookWidget {
  /// Constructs an instance of [SignInScreen]
  const SignInScreen({Key? key}) : super(key: key);
  static const _sidebarWidth = 400.0;
  @override
  Widget build(BuildContext context) {
    final size = useScreenSize();
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height,
                    width: size.width,
                    child: const _BuildAuthForm(),
                  ),
                ),
              ),
            ),
          ),
          // TODO: Set as custom break point [Johnny]
          if (size.width > tabletWidthBreakPoint)
            Expanded(
              flex: 9,
              child: Image.network(
                'https://images.unsplash.com/photo-1501503069356-3c6b82a17d89?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80',
                width: size.width - _sidebarWidth,
                height: size.height,
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    ));
  }
}

class _BuildAuthForm extends HookWidget {
  const _BuildAuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenState = useProvider(signInStateProvider);
    final screenController = useProvider(signInStateProvider.notifier);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final validators = useValidators();
    final theme = useTheme();

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('$assetImagePath/wsu_logo.png'),
          const SizedBox(height: 48),
          TextFormField(
            controller: emailController,
            validator: validators.emailValidator,
            decoration: const InputDecoration(
              labelText: 'Email',
              helperText: 'Enter your email',
              hintText: 'your.name@student.westernsydney.edu.au',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            validator: validators.passwordValidator,
            decoration: const InputDecoration(
              labelText: 'Password',
              helperText: 'Enter your password',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          if (screenState is Loading)
            const Center(
              child: CircularProgressIndicator(),
            )
          else
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () async {
                      // TODO: See if I can move to ViewModel
                      final isValid = formKey.currentState?.validate();
                      if (isValid != null && isValid) {
                        final result = await screenController.handleLogin(
                            context: context,
                            email: emailController.text,
                            password: passwordController.text);
                        if (result.error != null) {
                          useSnackBar(
                              context: context,
                              color: theme.colorScheme.error,
                              message: result.error?.message ?? '');
                        }
                      }
                    },
                    child: const Text('LOGIN'),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 8),
          Row(
            children: const [
              SelectableText('Forgot your password? '),
              HyperLink(label: 'Click Here', link: ''),
            ],
          ),
        ],
      ),
    );
  }
}
