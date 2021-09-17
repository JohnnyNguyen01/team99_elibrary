import 'package:firebase_auth/firebase_auth.dart';

import '../../common/domain/models/failure/failure.dart';
import '../../common/domain/models/result.dart';
import '../domain/auth_repository.dart';
import '../domain/user.dart' as model;

/// Firebase implementation of auth repository
class FirebaseAuthImplementation implements AuthRepository {
  /// Constructs an instance of [FirebaseAuthImplementation]
  FirebaseAuthImplementation({required FirebaseAuth authInstance})
      : _authInstance = authInstance;

  final FirebaseAuth _authInstance;

  @override
  Future<Result<model.User, FailureState>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await _authInstance.signInWithEmailAndPassword(
          email: email, password: password);

      /// TODO: Implement proper Api call to retrieve user data
      return Result.success(
        model.User(
          email: credential.user?.email ?? '',
          isAdmin: true,
          firstName: 'Johnny',
          lastName: 'Nguyen',
          uid: credential.user?.uid ?? '',
        ),
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
