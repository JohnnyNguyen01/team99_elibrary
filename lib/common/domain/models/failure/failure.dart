import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// A service [FailureState] error
@freezed
class FailureState with _$FailureState {
  /// The factory creates an instance of [FailureState] with a [message]
  const factory FailureState(String? message) = _FailureState;

  /// The default network [FailureState] error with [message]
  const factory FailureState.network(String? message) = NetworkFailureState;
}