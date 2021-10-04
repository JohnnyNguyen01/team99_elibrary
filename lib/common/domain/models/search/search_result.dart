import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

/// SearchResult model used to for the SearchListTile widget
@freezed
class SearchResult with _$SearchResult {
  /// [SearchResult] factory constructor
  const factory SearchResult({
    required final String objectId,
    @Default('') String title,
    @Default('') String query,
    String? subtitle,
    String? imageUrl,
    
  }) = _SearchResult;

  const SearchResult._();

  /// Helper method to return a [SearchResult] from a [json] objectß
  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}
