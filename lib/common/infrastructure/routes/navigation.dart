import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';

import '../../../authentication/presentation/views/sign_in_screen.dart';
import '../../presentation/views/books/books_screen.dart';
import '../../presentation/views/home_screen.dart';
import '../../presentation/views/loading_screen.dart';
import 'providers.dart';
import 'routes.dart';

/// URI to navigation template helper
UriTemplate uriToTemplate(Uri uri) => UriTemplate.parse(uri.toString());

final _auth = RouteDefinition(
  template: uriToTemplate(RoutePath.root),
  builder: (_, __, ___, ____) => const MaterialPage<void>(
    child: SignInScreen(),
  ),
);

final _loading = RouteDefinition(
  template: uriToTemplate(RoutePath.root),
  builder: (_, __, ___, ____) => const MaterialPage<void>(
    child: LoadingScreen(),
    fullscreenDialog: true,
  ),
);

// TODO: Create Error 404 route [Johnny]

final _authenticated = RouteDefinition(
    template: uriToTemplate(RoutePath.home),
    builder: (_, __, ___, ____) => const MaterialPage<void>(
          child: HomeScreen(),
        ),
    next: [
      RouteDefinition(
        template: uriToTemplate(RoutePath.books),
        builder: (_, __, ___, ____) => const MaterialPage<void>(
          child: BooksScreen(),
          fullscreenDialog: true,
        ),
      ),
    ]);

/// Trigger for login state changes
final authNavigationProvider =
    Provider.autoDispose.family<void, ValueNotifier<RouteDefinition>>(
  (ref, routes) => ref.watch(appStateStreamProvider).when(
    data: (appState) async {
      await Future.microtask(() {
        if (!appState.isAuthenticated) {
          routes.value = _auth;
        } else {
          routes.value = _authenticated;
        }
      });
    },
    loading: () async {
      await Future.microtask(() => routes.value = _loading);
    },
    error: (err, exception) {
      // TODO: Implement proper logging via Logger [Johnny]
      debugPrint('Navigation: $err');
    },
  ),
);
