import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/domain/models/result.dart';
import '../../common/utils/hooks.dart';
import '../domain/auth_repository.dart';
import '../providers.dart';
import 'sign_in_state.dart';

/// A [StateNotifierProvider] for the SignIn Screen's state and controller.
final signInStateProvider =
    StateNotifierProvider<SignInScreenController, SignInState>((ref) {
  final authRepo = ref.watch(firebaseAuthRepoProvider);
  return SignInScreenController(authRepo: authRepo);
});

/// The Controller for the SignIn view.
class SignInScreenController extends StateNotifier<SignInState> {
  /// Constructs an instance of [SignInScreenController]
  SignInScreenController({required AuthRepository authRepo})
      : _authRepo = authRepo,
        super(const SignInState.initial());
  final AuthRepository _authRepo;

  /// Login Button Handler
  ///
  /// Attemps to login a user with the provided credentials.
  Future<void> handleLogin({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    state = const SignInState.loading();
    final result = await _authRepo.loginWithEmailAndPassword(
        email: email, password: password);
    if (result.status == ResultStatus.failure) {
      state = SignInState.error(message: result.error?.message);
      // TODO: Implement better toast
      useSnackBar(context: context, message: result.error?.message ?? '');
    }
  }
}
