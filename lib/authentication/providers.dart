import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'domain/user.dart' as model;
import 'infrastructure/auth_implementation.dart';

/// A [Provider] for an instnace of [FirebaseAuth]
final firebaseAuthinstanceProvider =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

/// A [Provider] for the [FirebaseAuthImplementation] AuthRepository
/// implemenation
final firebaseAuthRepoProvider = Provider<FirebaseAuthImplementation>((ref) {
  final authInstance = ref.watch(firebaseAuthinstanceProvider);
  return FirebaseAuthImplementation(authInstance: authInstance);
});

/// [StreamProvider] for Firebase's auth state changes
final firebaseAuthStateStreamProvider =
    StreamProvider.autoDispose<User?>((ref) {
  final authInstance = ref.watch(firebaseAuthinstanceProvider);
  return authInstance.authStateChanges();
});

/// A [StreamProvider] for the currently logged in user
final currentUserStreamProvider =
    StreamProvider.autoDispose<model.User?>((ref) async* {
  // TODO: Retrieve user for firestore
  final firebaseUser = ref.watch(firebaseAuthStateStreamProvider).data?.value;
  if (firebaseUser != null) {
    yield model.User(
        uid: firebaseUser.uid,
        email: firebaseUser.email ?? '',
        isAdmin: true,
        firstName: 'Johnny',
        lastName: 'Nguyen');
  } else {
    yield null;
  }
});
