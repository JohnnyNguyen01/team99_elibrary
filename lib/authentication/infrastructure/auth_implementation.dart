import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../common/domain/models/failure/failure.dart';
import '../../common/domain/models/result.dart';
import '../../common/utils/firestore.dart';
import '../domain/auth_repository.dart';
import '../domain/user.dart' as model;

/// Firebase implementation of auth repository
class FirebaseAuthImplementation implements AuthRepository {
  /// Constructs an instance of [FirebaseAuthImplementation]
  FirebaseAuthImplementation({
    required FirebaseAuth authInstance,
    required FirebaseFirestore firestore,
  })  : _authInstance = authInstance,
        _firestore = firestore;

  final FirebaseAuth _authInstance;
  final FirebaseFirestore _firestore;
  @override
  Future<Result<model.User, FailureState>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await _authInstance.signInWithEmailAndPassword(
          email: email, password: password);
      // TODO: Put into user repository
      final userDoc = await _firestore
          .collection(usersCollection)
          .doc(credential.user?.uid)
          .get();

      return Result.success(
        model.User(
            email: credential.user?.email ?? '',
            isAdmin: true,
            firstName: 'Johnny',
            lastName: 'Nguyen',
            uid: credential.user?.uid ?? '',
            imageUrl: userDoc.data()?['imageUrl'] as String),
      );
    } on FirebaseAuthException catch (err) {
      return Result.failure(
        FailureState(err.message),
      );
    }
  }

  @override
  Future<Result<String?, FailureState>> logout() async {
    try {
      await _authInstance.signOut();
      return Result.success('Signed out successfully');
    } on FirebaseAuthException catch (err) {
      return Result.failure(FailureState(err.message));
    }
  }
}
