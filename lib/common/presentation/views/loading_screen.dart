import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Initial App Loading screen
class LoadingScreen extends HookWidget {
  /// Constructs a [LoadingScreen] instance
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        // TODO: Change design to app logo [Johnny]
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
}
