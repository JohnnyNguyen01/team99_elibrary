import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/models/search/search_highlight.dart';
import '../../../domain/models/search/search_result.dart';
import '../../../domain/repositories/search/search.dart';
import '../../../infrastructure/routes/providers.dart';
import 'model/search_state.dart';

/// A [Provider] for the [SearchViewModel]
final searchViewModelProvider =
    StateNotifierProvider.autoDispose<SearchViewModel, SearchState>((ref) {
  final searchRepo = ref.watch(searchRepositoryProvider);
  return SearchViewModel(searchRepo: searchRepo);
});

/// Search View Model
class SearchViewModel extends StateNotifier<SearchState> {
  /// [SearchViewModel] constructor
  SearchViewModel({required final SearchRepository searchRepo})
      : _searchRepo = searchRepo,
        super(const SearchState());

  final SearchRepository _searchRepo;

  /// Obtain the query from the search bar, and run a search query which will
  /// update the searchResult stae
  Future<void> setSearchResults({required final String query}) async {
    //reset state prior to each new query
    emptySearchResults();
    // run query
    final queryResults = await _searchRepo.queryAll(searchQuery: query);
    queryResults.fold(
      (final queryList) {
        for (final querySnapshot in queryList) {
          final highlightData =
              SearchHighlight.fromJson(querySnapshot.queryData);
          final searchResult = SearchResult(
              query: query,
              objectId: highlightData.uid,
              title: highlightData.name,
              subtitle: highlightData.authorName,
              imageUrl: highlightData.imageUrl);
          state = state
              .copyWith(searchResults: [...state.searchResults, searchResult]);
        }
      },
      (error) => null,
    );
  }

  /// Sets the SearchResults to an empty list
  void emptySearchResults() => state = state.copyWith(searchResults: []);
}
