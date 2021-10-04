import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../api_keys.dart';
import '../../../authentication/providers.dart';
import '../../domain/models/app_state.dart';
import '../../domain/repositories/books/books_facade.dart';
import '../../domain/repositories/books/books_repository.dart';
import '../../domain/repositories/search/algolia.dart';
import '../../domain/repositories/search/search.dart';

/// Provides [StreamProvider] of app state changes
final appStateStreamProvider = StreamProvider.autoDispose<AppState>((ref) {
  var appState = const AppState(isAuthenticated: true);

  final currentUser = ref.watch(currentUserStreamProvider).data?.value;
  if (currentUser != null) {
    appState = appState.copyWith(isAuthenticated: true);
  }
  return Stream.value(appState);
});

/// A provider for the Http client
final dioHttpProvider = Provider<Dio>((_) => Dio());

/// [BooksRepository] provider
final booksRepositoryProvider = Provider<IBooksRepository>((ref) {
  final firestore = FirebaseFirestore.instance;
  return BooksRepository(firestore: firestore);
});

/// [SearchRepository] Provider
final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  final algoliaClient = const Algolia.init(
          applicationId: algoliaApplicationIDKey, apiKey: algoliaSearchAPIKey)
      .instance.index('team99_books');
      return AlgoliaSearchRepository(algoliaClient: algoliaClient);
});
