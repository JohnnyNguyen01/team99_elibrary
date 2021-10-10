import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../common/applicaiton/states/current_user.dart';
import '../common/utils/firestore.dart';

import 'domain/user.dart' as model;
import 'infrastructure/auth_implementation.dart';

/// A [Provider] for an instnace of [FirebaseAuth]
final firebaseAuthinstanceProvider =
    Provider<FirebaseAuth>((_) => FirebaseAuth.instance);

/// A [Provider] for the [FirebaseAuthImplementation] AuthRepository
/// implemenation
final firebaseAuthRepoProvider = Provider<FirebaseAuthImplementation>((ref) {
  final authInstance = ref.watch(firebaseAuthinstanceProvider);
  return FirebaseAuthImplementation(
    authInstance: authInstance,
    firestore: FirebaseFirestore.instance,
  );
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
    final userDoc = await FirebaseFirestore.instance
        .collection(usersCollection)
        .doc(firebaseUser.uid)
        .get();

    final user = model.User.fromJson(userDoc.data()!);
    ref.watch(currentUserStateProvider.notifier).setCurrentUser(user);
    yield user;
  } else {
    yield null;
  }
});
