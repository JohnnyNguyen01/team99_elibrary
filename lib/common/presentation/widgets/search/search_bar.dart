import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:riverpod_navigation/riverpod_navigation.dart';
import '../../../infrastructure/routes/routes.dart';

import 'search_view_model.dart';
import 'widgets/search_result_list_tile.dart';

/// Search Bar Widget
class SearchBar extends HookWidget {
  /// Search Bar constructor
  const SearchBar();

  @override
  Widget build(BuildContext context) {
    final state = useProvider(searchViewModelProvider);
    final viewController = useProvider(searchViewModelProvider.notifier);

    return FloatingSearchBar(
      hint: 'Search by title, author, ISBN & category',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      openAxisAlignment: 0,
      backdropColor: Colors.transparent,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) async {
        query.isEmpty
            ? viewController.emptySearchResults()
            : await viewController.setSearchResults(query: query);
      },
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          child: CircularButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Card(
          elevation: 4,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.searchResults.length,
            itemBuilder: (final context, final index) {
              final result = state.searchResults[index];
              return SearchResultListTile(
                title: result.title,
                subtitle: result.subtitle,
                objectId: result.objectId,
                imageUrl: result.imageUrl,
                query: result.query,
                onTap: () => context.read(navigationProvider.notifier).navigate(
                      RoutePath.bookDetails(uid: result.objectId),
                    ),
              );
            },
          ),
        ),
      ),
    );
  }
}
