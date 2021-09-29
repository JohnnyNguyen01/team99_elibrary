import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';

/// BuildContext extension methods
extension RoutePathExtension on BuildContext {
  /// Navigates to the specified RoutePath within a navigation stack.
  ///
  /// Unlike `context.navigation.navigate()` this successfully routes to
  /// to pages within a nested heirarchy.
  void navigateTo({required final Uri routePath}) {
    final currentStack = read(navigationProvider).current;
    final currentUri = currentStack.toUri();
    final newRouteUri = Uri(path: currentUri.toString() + routePath.path);
    navigation.navigate(newRouteUri);
  }
}
