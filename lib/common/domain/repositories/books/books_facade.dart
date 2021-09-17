import '../../models/book/book.dart';
import '../../models/failure/failure.dart';
import '../../models/result.dart';

/// Book Repository interface
abstract class IBooksRepository {
  /// Add a new book to the database
  Future<void> addNewBook({Book? book});

  /// Retrieve the Specified book via it's uid;
  Future<Result<Book, FailureState>> fetchBookByUid({required String uid});

  /// Delete a book via its uid
  Future<void> deleteBookByUid({required String uid});

  /// Fetches all the books within the database
  Future<Result<List<Book>, FailureState>> fetchAllBooks();

  /// Deletes all books from the database
  Future<void> deleteAllBooks();
}
