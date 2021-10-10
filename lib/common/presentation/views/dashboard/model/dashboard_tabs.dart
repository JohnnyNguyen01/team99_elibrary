/// Dashboard tab routes
enum DashboardTabs {
  /// currently borrowing route
  currentlyBorrowing,

  /// borrow history route
  borrowHistory,

  /// fines route
  fines
}

/// Extension helper methods for [DashboardTabs]
extension DashboardTabsExtension on DashboardTabs {
  /// Returns the title to be displayed
  String get title {
    switch (this) {
      case DashboardTabs.borrowHistory:
        return 'Borrow History';
      case DashboardTabs.currentlyBorrowing:
        return 'Currently Borrowed';
      case DashboardTabs.fines:
        return 'Fines';
    }
  }
}
