import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';
import 'package:url_strategy/url_strategy.dart';

import 'common/infrastructure/routes/navigation.dart';
import 'common/infrastructure/routes/routes.dart';
import 'common/presentation/views/loading_screen.dart';
import 'common/utils/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Future.microtask(() async {
    await Firebase.initializeApp();
    await FirebaseAuth.instance.setPersistence(Persistence.NONE);
  });
  setPathUrlStrategy();
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

class _NavigationApp extends HookWidget {
  const _NavigationApp({
    required RiverpodRouterDelegate delegate,
    required RiverpodRouteParser parser,
  })  : _delegate = delegate,
        _parser = parser;

  final RiverpodRouterDelegate _delegate;
  final RiverpodRouteParser _parser;

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routerDelegate: _delegate,
        routeInformationParser: _parser,
        theme: appThemeLight,
        darkTheme: appThemeDark,
        themeMode: ThemeMode.light,
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          child: child ?? const SizedBox(),
        ),
      );
}
