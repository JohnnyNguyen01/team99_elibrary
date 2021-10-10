import 'package:freezed_annotation/freezed_annotation.dart';

import 'currently_borrowed/currently_borrowed.dart';
import 'dashboard_tabs.dart';

part 'dashboard_view_state.freezed.dart';

/// Dashboard View State
@freezed
class DashboardViewState with _$DashboardViewState {
  /// [DashboardViewState] constructor
  const factory DashboardViewState({
    @Default(false) bool isLoading,
    @Default(<String>[
      ' ',
      'Book Name',
      'Date Borrowed',
      'Due Date',
      'Transaction ID'
    ])
        List<String> currentlyBorrowedHeaders,
    @Default(<CurrentlyBorrowed>[])
        List<CurrentlyBorrowed> currentlyBorrowedList,
        @Default(DashboardTabs.currentlyBorrowing) DashboardTabs currentTab,
  }) = _DashboardViewState;
}
