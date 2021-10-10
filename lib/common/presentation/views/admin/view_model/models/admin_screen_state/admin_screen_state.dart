import 'package:freezed_annotation/freezed_annotation.dart';
import '../admin_tabs.dart';

part 'admin_screen_state.freezed.dart';

/// The State model for the Admin Scren view.
@freezed
class AdminScreenState with _$AdminScreenState {
  /// [AdminScreenState] constructor
  const factory AdminScreenState({
    @Default(AdminTabs.bookRequests) AdminTabs currentTab,
  }) = _AdminScreenState;
}
