import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../../utils/firestore.dart';
import '../../models/book/book.dart';
import '../../models/book_instance/book_instance.dart';
import '../../models/failure/failure.dart';
import '../../models/success/success.dart';
import 'books_facade.dart';

/// [BooksRepository]
///
/// Contains all functions related to books, and is the implementation of the
/// BooksRepository interface.
class BooksRepository implements IBooksRepository {
  /// [BooksRepository] constructor
  const BooksRepository({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  @override
  Future<Either<void, FailureState>> addNewBook({Book? book}) async {
    try {
      if (book != null) {
        await _firestore.collection(booksCollection).add(book.toJson());
        return const Left(null);
      } else {
        return const Right(FailureState('Attempted to add null book'));
      }
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }

  @override
  Future<Either<SuccessResponse, FailureState>> deleteAllBooks() async {
    try {
      final collection = await _firestore.collection(booksCollection).get();

      final docs = collection.docs;
      for (final doc in docs) {
        await _firestore.collection(booksCollection).doc(doc.id).delete();
      }
      return const Left(
        SuccessResponse<void>(message: 'All books deleted successfully'),
      );
    } on FirebaseException catch (e) {
      return Right(
        FailureState(e.message),
      );
    }
  }

  @override
  Future<Either<SuccessResponse, FailureState>> deleteBookByUid(
      {required String uid}) async {
    try {
      final docRef = _firestore.collection(booksCollection).doc(uid);
      final doc = await docRef.get();
      if (doc.exists) {
        await docRef.delete();
        return const Left(
            SuccessResponse<void>(message: 'Book deleted successfully'));
      } else {
        return const Right(FailureState('No such book exists'));
      }
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }

  @override
  Future<Either<List<Book>, FailureState>> fetchAllBooks() async {
    try {
      final booksList = <Book>[];
      var numberAvailable = 0;
      final querySnapshot = await _firestore.collection(booksCollection).get();
      final bookSnapshots = querySnapshot.docs;
      for (final snapshot in bookSnapshots) {
        final book = Book.fromJson(snapshot.data());
        // TODO: This is not optimal, but I don't have time for proper
        // implementation. Refactor if possible me. [Johnny]
        final instances = await _firestore
            .collection(booksCollection)
            .doc(book.uid)
            .collection(instancesCollection)
            .get();
        for (final snapshot in instances.docs) {
          final bookInstance = BookInstance.fromJson(snapshot.data());
          if (bookInstance.isAvailable) {
            numberAvailable = numberAvailable + 1;
          }
        }
        booksList.add(
          book.copyWith(numberAvailable: numberAvailable),
        );
        numberAvailable = 0;
      }
      return Left(booksList);
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }

  @override
  Future<Either<Book, FailureState>> fetchBookByUid(
      {required String uid}) async {
    try {
      var numberAvailable = 0;
      final doc = await _firestore.collection(booksCollection).doc(uid).get();
      final docData = doc.data();
      if (doc.exists && docData != null) {
        final book = Book.fromJson(docData);
        final instances = await _firestore
            .collection(booksCollection)
            .doc(book.uid)
            .collection(instancesCollection)
            .get();
        for (final snapshot in instances.docs) {
          final bookInstance = BookInstance.fromJson(snapshot.data());
          if (bookInstance.isAvailable) {
            numberAvailable = numberAvailable + 1;
          }
        }
        return Left(book.copyWith(numberAvailable: numberAvailable));
      } else {
        return const Right(FailureState("The requested book doesn't exist "));
      }
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }

  @override
  Future<Either<BookInstance, FailureState>> fetchFirstFreeBookInstance(
      {required String uid}) async {
    try {
      final snapshot = await _firestore
          .collection(booksCollection)
          .doc(uid)
          .collection(instancesCollection)
          .where(isAvailable, isEqualTo: true)
          .limit(1)
          .get();
      final instance = BookInstance.fromJson(
        snapshot.docs.first.data(),
      );
      return Left(instance);
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }

  @override
  Future<Either<void, FailureState>> updateBookInstance(
      {required BookInstance bookInstance}) async {
    try {
      await _firestore
          .collection(booksCollection)
          .doc(bookInstance.bookUid)
          .collection(instancesCollection)
          .doc(bookInstance.uid)
          .update(bookInstance.toJson());
      return const Left(null);
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }
}
