import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../authentication/providers.dart';
import '../../domain/models/app_state.dart';

/// Provides [StreamProvider] of app state changes
final appStateStreamProvider = StreamProvider.autoDispose<AppState>((ref) {
  // TODO: Change to var when adding more routing logic
  var appState = const AppState();

  final currentUser = ref.watch(currentUserStreamProvider).data?.value;
  if (currentUser != null) {
    appState = appState.copyWith(isAuthenticated: true);
  }
  return Stream.value(appState);
});
