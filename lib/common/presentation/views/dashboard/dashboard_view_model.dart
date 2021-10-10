import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../authentication/providers.dart';
import '../../../domain/repositories/books/books_facade.dart';
import '../../../domain/repositories/user/user_repository_facade.dart';
import '../../../infrastructure/routes/providers.dart';
import 'model/currently_borrowed/currently_borrowed.dart';
import 'model/dashboard_tabs.dart';
import 'model/dashboard_view_state.dart';

/// The [Provider] for the [DashboardViewModel]
final dashboardViewModelProvider =
    StateNotifierProvider.autoDispose<DashboardViewModel, DashboardViewState>(
        (ref) {
  ref.maintainState = true;
  final userRepo = ref.watch(userRepositoryProvider);
  final booksRepo = ref.watch(booksRepositoryProvider);
  return DashboardViewModel(
    userRepo: userRepo,
    booksRepo: booksRepo,
    read: ref.read,
  );
});

/// Dashboard View Model
///
/// All the business logic and functions required by the Dashbaord
class DashboardViewModel extends StateNotifier<DashboardViewState> {
  /// [DashboardViewModel] constructor
  DashboardViewModel({
    required final IUserRepository userRepo,
    required final IBooksRepository booksRepo,
    required final Reader read,
  })  : _userRepo = userRepo,
        _booksRepo = booksRepo,
        _read = read,
        super(const DashboardViewState());

  final IBooksRepository _booksRepo;
  final IUserRepository _userRepo;
  final Reader _read;

  /// Changes the currently selected tab
  void setCurrentTab({required final DashboardTabs tab}) =>
      state = state.copyWith(currentTab: tab);

  /// Fetch and set the currently borrowed list
  Future<void> fetchCurrentBorrowedList() async {
    final currentUser = _read(currentUserStreamProvider).data?.value;
    if (currentUser != null) {
      /// Set state to loading
      state = state.copyWith(isLoading: true);
      final currentlyBorrowedList = <CurrentlyBorrowed>[];
      // Obtain all currently borrowed transactions
      final requestResult = await _userRepo.fetchAllCurrentlyBorrowedInstances(
          uid: currentUser.uid );
      await requestResult.fold(
        (transactionList) async {
          // Obtain book associated with each transaction
          for (final transaction in transactionList) {
            final queryResult =
                await _booksRepo.fetchBookByUid(uid: transaction.bookUid ?? '');
            queryResult.fold(
              (book) {
                final borrowInstance = CurrentlyBorrowed(
                    book: book, currentlyBorrowedBook: transaction);
                currentlyBorrowedList.add(borrowInstance);
              },
              (failure) {},
            );
          }
        },
        (failure) {},
      );
      // set view-model state when complete
      state = state.copyWith(
        currentlyBorrowedList: currentlyBorrowedList,
        isLoading: false,
      );
    }
  }
}
