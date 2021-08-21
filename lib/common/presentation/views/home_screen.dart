import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// The app [HomeScreen]
class HomeScreen extends HookWidget {
  /// Constructs an instance of [HomeScreen]
  const HomeScreen();

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: Center(
          child: Text('Home Screen'),
        ),
      );
}
