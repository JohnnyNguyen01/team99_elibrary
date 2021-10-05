import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_highlight.freezed.dart';
part 'search_highlight.g.dart';

/// Search Highlight - returns a highlighted version of the book object
@freezed
class SearchHighlight with _$SearchHighlight {
  /// [SearchHighlight] factory constructor
  const factory SearchHighlight({
    @Default('') String uid,
    @Default('') String authorName,
    @Default(<String>[]) List<String> categories,
    @Default('') String name,
    String? imageUrl,
  }) = _SearchHighlight;

  const SearchHighlight._();

  /// Helper method to return an empty instance of [SearchHighlight]
  factory SearchHighlight.empty() => const SearchHighlight._();

  /// Helper method that obtains a [SearchHighlight] from a [json] object
  factory SearchHighlight.fromJson(Map<String, dynamic> json) =>
      _$SearchHighlightFromJson(json);
}
