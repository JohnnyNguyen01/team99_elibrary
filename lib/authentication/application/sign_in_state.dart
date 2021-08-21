import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_state.freezed.dart';

/// The union class that represents the various states the SignInScreen
/// can be in.
@freezed
class SignInState with _$SignInState {
  /// The Screen's initial state
  const factory SignInState.initial() = Initial;

  /// Occurs when a user is attempting to log in.
  const factory SignInState.loading() = Loading;

  /// Occurs when there's an error with Signin in.
  const factory SignInState.error({required String? message}) = Error;

  /// Occurs when Signin in was a success
  const factory SignInState.success() = Success;
}
