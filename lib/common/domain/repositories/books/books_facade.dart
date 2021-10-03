import 'package:dartz/dartz.dart';

import '../../models/book/book.dart';
import '../../models/failure/failure.dart';
import '../../models/success/success.dart';

/// Book Repository interface
abstract class IBooksRepository {
  /// Add a new book to the database
  Future<Either<void, FailureState>> addNewBook({Book? book});

  /// Retrieve the Specified book via it's uid;
  Future<Either<Book, FailureState>> fetchBookByUid({required String uid});

  /// Delete a book via its uid
  Future<Either<SuccessResponse, FailureState>> deleteBookByUid(
      {required String uid});

  /// Fetches all the books within the database
  Future<Either<List<Book>, FailureState>> fetchAllBooks();

  /// Deletes all books from the database
  Future<Either<SuccessResponse, FailureState>> deleteAllBooks();

}
