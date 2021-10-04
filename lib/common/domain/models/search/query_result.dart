import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_result.freezed.dart';

/// The [QueryResult] obtained from a SearchRepository query
@freezed
class QueryResult with _$QueryResult {
  /// Creates a [QueryResult] instance
  const factory QueryResult({
    required final Map<String, dynamic> queryData,
    final Map<String, dynamic>? highlightResult,
  }) = _QueryResult;
}
