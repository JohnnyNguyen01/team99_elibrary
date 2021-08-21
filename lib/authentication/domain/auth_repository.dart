import '../../common/domain/models/failure.dart';
import '../../common/domain/models/result.dart';
import 'user.dart';

/// The interface class for App Authentication
abstract class AuthRepository {
  /// Login a user with an email and a password
  Future<Result<User?, FailureState>> loginWithEmailAndPassword(
      {required String email, required String password});

  /// Logout a currently singed in user
  Future<Result<String?, FailureState>> logout();
}
