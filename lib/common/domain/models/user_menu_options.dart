/// Account Menu enum
enum AccountMenuOptions {
  /// dashboard
  dashboard,

  /// fines
  fines,

  /// sign out
  signOut,
}

/// [AccountMenuOptions] extension methods
extension AccountMenuOptionsExtension on AccountMenuOptions {
  /// returns the string representation of the enum value
  String value() {
    switch (this) {
      case AccountMenuOptions.dashboard:
        return 'Dashboard';
      case AccountMenuOptions.fines:
        return 'Fines';
      case AccountMenuOptions.signOut:
        return 'Sign Out';
    }
  }
}
