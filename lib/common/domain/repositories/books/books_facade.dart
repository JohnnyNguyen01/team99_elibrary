import 'package:dartz/dartz.dart';

import '../../models/book/book.dart';
import '../../models/book_instance/book_instance.dart';
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

  /// Retrieve the first free and available bookInstance
  Future<Either<BookInstance, FailureState>> fetchFirstFreeBookInstance(
      {required String uid});

  /// Update the specified bookInstance
  Future<Either<void, FailureState>> updateBookInstance(
      {required BookInstance bookInstance});
}
