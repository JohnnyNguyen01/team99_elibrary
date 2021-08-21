import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../domain/models/app_state.dart';

/// Provides [StreamProvider] of app state changes
final appStateStreamProvider = StreamProvider.autoDispose<AppState>((ref) {
  // TODO: Change to var when adding more routing logic
  const appState =  AppState();

  return Stream.value(appState);
});
