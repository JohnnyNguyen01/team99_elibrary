/// Contains all the route paths used by the app
class RoutePath {
  RoutePath._();

  /// Root route path
  static final root = Uri(path: '/');

  /// Home route path
  static final home = Uri(path: '/');

  /// Books route path
  static final books = Uri(path: '/books');

  /// Dashboard route path
  static final dashboard = Uri(path: '/dashboard');

  /// book details route path
  static Uri bookDetails({final String? uid}) => Uri(
        path: '/book-details/${uid ?? ':${RouteParameters.uid}'}',
        queryParameters: <String, dynamic>{
          RouteParameters.uid: uid,
        },
      );
}

/// Route Parameters
class RouteParameters {
  const RouteParameters._();

  /// uid param
  static const uid = 'uid';
}
