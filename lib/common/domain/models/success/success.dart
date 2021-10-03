import 'package:freezed_annotation/freezed_annotation.dart';

part 'success.freezed.dart';

/// Success Response object
///
/// Thrown/returned when there was a successful service or api call.
@freezed
class SuccessResponse<T> with _$SuccessResponse<T> {
  /// [SuccessResponse] constructor
  const factory SuccessResponse({
    required String message,
    String? code,
    T? payload,
  }) = _SuccessResponse<T>;
}
