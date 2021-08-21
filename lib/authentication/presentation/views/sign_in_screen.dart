import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// The [SignInScreen] shown to the user on initial app load.
class SignInScreen extends HookWidget {
  /// Constructs an instance of [SignInScreen]
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child:  Text('hello world'),
        ),
      );
}
