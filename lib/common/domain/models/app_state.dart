import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

/// The user state of the user
@freezed
class AppState with _$AppState {
  /// The user state
  const factory AppState({
    @Default(false) bool isAuthenticated,
    @Default(false) bool isInitialized,
    @Default(false) bool showTour,
  }) = _AppState;
}
