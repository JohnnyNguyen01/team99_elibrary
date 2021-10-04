import 'package:freezed_annotation/freezed_annotation.dart';

import 'currently_borrowed/currently_borrowed.dart';

part 'dashboard_view_state.freezed.dart';

/// Dashboard View State
@freezed
class DashboardViewState with _$DashboardViewState {
  /// [DashboardViewState] constructor
  const factory DashboardViewState({
    @Default(false) bool isLoading,
    @Default(<CurrentlyBorrowed>[])
        List<CurrentlyBorrowed> currentlyBorrowedList,
  }) = _DashboardViewState;
}