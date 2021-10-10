import 'dart:io';

import 'package:file_picker/_internal/file_picker_web.dart';
import 'package:file_picker/file_picker.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../infrastructure/routes/providers.dart';
import 'models/admin_screen_state/admin_screen_state.dart';

/// A [Provider] for the [AdminScreenViewModel].
final adminScreenViewModelProvider =
    StateNotifierProvider.autoDispose<AdminScreenViewModel, AdminScreenState>(
        (ref) {
  final booksRepo = ref.watch(booksRepositoryProvider);
  return AdminScreenViewModel();
});

/// Admin Screen View Model
///
/// Responsible for all business logic function relating to the
/// [AdminScreenState].
class AdminScreenViewModel extends StateNotifier<AdminScreenState> {
  /// [AdminScreenViewModel] constructor
  AdminScreenViewModel() : super(const AdminScreenState());

  /// file picker test
  Future<void> filePickerTest() async {
    final result = await FilePickerWeb.platform.pickFiles();
    if(result != null){
      print(result.files.single.path);
      final file = File(result.files.single.path ?? '');
    } else {
      print('no file');
    }
  }
}
