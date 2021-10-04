import 'dart:async';

import 'package:algolia/algolia.dart';
import 'package:dartz/dartz.dart';
import '../../models/failure/failure.dart';
import '../../models/search/query_result.dart';

import 'search.dart';

/// Implementation of the [SearchRepository] using Algolia
class AlgoliaSearchRepository implements SearchRepository {
  /// [AlgoliaSearchRepository] constructor
  AlgoliaSearchRepository({
    required final AlgoliaIndexReference algoliaClient,
  }) : _algoliaClient = algoliaClient;

  final AlgoliaIndexReference _algoliaClient;
  @override
  Future<Either<List<QueryResult>, FailureState>> queryAll({
    required final String searchQuery,
  }) async {
    try {
      final queryResultList = <QueryResult>[];
      final algoliaQuery = _algoliaClient.query(searchQuery);
      final querySnapshot = await algoliaQuery.getObjects();
      if (querySnapshot.hasHits) {
        for (final snapshot in querySnapshot.hits) {
          final queryResult = QueryResult(
            queryData: snapshot.data,
            highlightResult: snapshot.highlightResult,
          );
          queryResultList.add(queryResult);
        }
      }
      return Left(queryResultList);
    } on AlgoliaError catch (e) {
      return Right(FailureState(e.error.toString()));
    }
  }
}
