import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../../utils/firestore.dart';
import '../../models/currently_borrowed_book/currently_borrowed_book.dart';

import '../../models/failure/failure.dart';
import 'user_repository_facade.dart';

/// User Repository implementation
///
/// Holds functions related to the User instances and collections.
class UserRepository implements IUserRepository {
  /// [UserRepository] constructor
  const UserRepository({required final FirebaseFirestore firestore})
      : _firestore = firestore;

  final FirebaseFirestore _firestore;

  @override
  Future<Either<void, FailureState>> addNewCurrentlyBorrowedEntry({
    required String uid,
    required CurrentlyBorrowedBook currentlyBorrowedInstance,
  }) async {
    try {
      await _firestore
          .collection(usersCollection)
          .doc(uid)
          .collection(currentlyBorrowedCollection)
          .doc(currentlyBorrowedInstance.uid)
          .set(currentlyBorrowedInstance.toJson());
      return const Left(null);
    } on FirebaseException catch (e) {
      return Right(FailureState(e.message));
    }
  }

  @override
  Future<Either<List<CurrentlyBorrowedBook>, FailureState>>
      fetchAllCurrentlyBorrowedInstances({required String uid}) async {
    try {
      final instanceList = <CurrentlyBorrowedBook>[];
      final collectionSnapshot = await _firestore
          .collection(usersCollection)
          .doc(uid)
          .collection(currentlyBorrowedCollection)
          .get();
      for (final snapshot in collectionSnapshot.docs) {
        final instance = CurrentlyBorrowedBook.fromJson(snapshot.data());
        instanceList.add(instance);
      }
      return Left(instanceList);
    } on FirebaseException catch (e) {
      return right(FailureState(e.message));
    }
  }
}
