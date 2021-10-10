/// Admin Tab routes
enum AdminTabs {
  /// Books Requests route
  bookRequests,

  /// Books Removal route
  bookRemoval,

  /// Fines route
  fines,

  /// Users route
  user
}

/// Helper extension methods for [AdminTabs]
extension AdminTabsExtension on AdminTabs {
  /// Returns the [String] representation of the [AdminTabs] to be
  /// displayed.
  String get name {
    switch (this) {
      case AdminTabs.bookRequests:
        return 'Book Requests';
      case AdminTabs.bookRemoval:
        return 'Remove Book';
      case AdminTabs.fines:
        return 'Fines';
      case AdminTabs.user:
        return 'Users';
    }
  }
}
