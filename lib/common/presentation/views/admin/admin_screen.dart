import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'view_model/admin_screen_view_model.dart';

/// Administration Screen
///
/// Contains the dashboard screen that leads to all functions and sub
/// routes related to an administrator
class AdminScreen extends HookWidget {
  /// [AdminScreen] constructor
  const AdminScreen();

  @override
  Widget build(final BuildContext context) {
    final viewState = useProvider(adminScreenViewModelProvider);
    final viewController = useProvider(adminScreenViewModelProvider.notifier);
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async => viewController.filePickerTest(),
          child: const Text('File Picker'),
        ),
      ),
    );
  }
}
