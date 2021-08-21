import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';

import 'common/infrastructure/routes/navigation.dart';
import 'common/infrastructure/routes/routes.dart';
import 'common/presentation/views/loading_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const App(),
  );
}

Uri _uriRewrite(NavigationNotifier notifier, Uri uri) => uri;


/// The default eLibrary app
class App extends HookWidget {
  /// [App] constructor
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = useState(
      RouteDefinition(
        template: uriToTemplate(RoutePath.root),
        builder: (_, __, ___, ____) => const MaterialPage<void>(
          child: LoadingScreen(),
        ),
      ),
    );
    return ProviderScope(
      overrides: [
        routesProvider.overrideWithValue(routes.value),
        popBehaviourProvider.overrideWithValue(defaultPopBehaviour),
        uriRewriterProvider.overrideWithValue(_uriRewrite),
      ],
      child: _RoutedApp(routes: routes),
    );
  }
}

/// The Router widget of our application
class _RoutedApp extends HookWidget {
  /// Constructs an instance of the [_RoutedApp]
  const _RoutedApp({required this.routes});

  /// route values
  final ValueNotifier<RouteDefinition> routes;

  @override
  Widget build(BuildContext context) {
    useProvider(authNavigationProvider(routes));

    return _NavigationApp(
      delegate: RiverpodRouterDelegate(
        notifier: context.read(navigationProvider.notifier),
        routes: routes.value,
      ),
      parser: RiverpodRouteParser(),
    );
  }
}

// class _RoutedApp extends HookWidget {
//   const _RoutedApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const SizedBox();
//   }
// }

class _NavigationApp extends HookWidget {
  const _NavigationApp({
    required RiverpodRouterDelegate delegate,
    required RiverpodRouteParser parser,
  })  : _delegate = delegate,
        _parser = parser;

  final RiverpodRouterDelegate _delegate;
  final RiverpodRouteParser _parser;

  // TODO: create and initialize app theme [Johnny]
  // static const theme = AppTheme();
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _delegate,
        routeInformationParser: _parser,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child ?? const SizedBox(),
        ),
      );
}
