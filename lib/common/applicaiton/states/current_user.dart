import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../authentication/domain/user.dart';

/// A provider for the `CurrentUser` stater
final currentUserStateProvider =
    StateNotifierProvider<CurrentUserNotifier, User>(
  (final _) => CurrentUserNotifier(),
);

/// Cached current user
///
/// By storing/caching the current user object here, we avoid having to continually
/// make a database read to obtain the user's details.
class CurrentUserNotifier extends StateNotifier<User> {
  /// [CurrentUserNotifier] constructor
  CurrentUserNotifier() : super(User.empty());

  /// Set the current user object
  // ignore: avoid_setters_without_getters
  void setCurrentUser(User user) => state = user;

  /// Retrieve the current user object
  User get getCurrentUser => state;
}
