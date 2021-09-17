import 'failure/failure.dart';

/// A [Result] of [data] or [error]
class Result<T, Exception> {
  /// Initialize with success status and [data]
  Result.success(this.data) : status = ResultStatus.success;

  /// Initialize with failure status and [error]
  Result.failure(this.error) : status = ResultStatus.failure;

  /// The response data
  T? data;

  /// Response exception
  FailureState? error;

  /// The response status
  ResultStatus status;

  @override
  String toString() => 'Status : $status \nData : $data \nMessage : $error';
}

/// [Result] status values
enum ResultStatus {
  /// Result was successful
  success,

  /// Result failed
  failure
}
