import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        body: Row(
      children: [
        SizedBox(
          height: size.height,
          width: _sidebarWidth,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              child: SingleChildScrollView(
                child: _BuildAuthForm(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width - _sidebarWidth,
          height: size.height,
          child: Image.network(
            'https://images.unsplash.com/photo-1501503069356-3c6b82a17d89?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2850&q=80',
            width: size.width - _sidebarWidth,
            height: size.height,
            fit: BoxFit.cover,
          ),
          // TODO: Find fix for Aspect Ration [Johnny]
          // child: const CustomVideoPlayer(),
        )
      ],
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
            SizedBox(
              width: 400,
              height: 48,
              child: ElevatedButton(
                onPressed: () async {
                  // TODO: Move to view model
                  final isValid = formKey.currentState?.validate();
                  if (isValid != null && isValid) {
                    await screenController.handleLogin(
                        context: context,
                        email: emailController.text,
                        password: passwordController.text);
                  }
                },
                child: const Text('Login'),
              ),
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
