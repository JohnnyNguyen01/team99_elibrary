import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/search/search_result.dart';

part 'search_state.freezed.dart';

/// Search State for the Search View-Model
@freezed
class SearchState with _$SearchState {
  ///[SearchState] factory constructor
  const factory SearchState({
    @Default(<SearchResult>[]) List<SearchResult> searchResults,
  }) = _SearchState;
}
