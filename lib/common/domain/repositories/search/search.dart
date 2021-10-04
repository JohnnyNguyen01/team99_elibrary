// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';

import '../../models/failure/failure.dart';
import '../../models/search/query_result.dart';

/// Search Repository Interface
abstract class SearchRepository {
  /// Fetch a new search query
  Future<Either<List<QueryResult>, FailureState>> queryAll(
      {required String searchQuery});
}
