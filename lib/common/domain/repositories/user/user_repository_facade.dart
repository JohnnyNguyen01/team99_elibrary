// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';

import '../../models/currently_borrowed_book/currently_borrowed_book.dart';
import '../../models/failure/failure.dart';

/// User Repository interface
abstract class IUserRepository {
  /// Add a new `CurrentlyBorrowed` instance for the user
  Future<Either<void, FailureState>> addNewCurrentlyBorrowedEntry({
    required String uid,
    required CurrentlyBorrowedBook currentlyBorrowedInstance,
  });

  /// Fetch All Currently borrowed bookInstances
  Future<Either<List<CurrentlyBorrowedBook>, FailureState>>
      fetchAllCurrentlyBorrowedInstances({required String uid});
}
