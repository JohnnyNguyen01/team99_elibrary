import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../../../../authentication/providers.dart';
import '../../../../../domain/models/book_instance/book_instance.dart';
import '../../../../../domain/models/currently_borrowed_book/currently_borrowed_book.dart';
import '../../../../../domain/models/failure/failure.dart';
import '../../../../../domain/repositories/books/books_facade.dart';
import '../../../../../domain/repositories/user/user_repository_facade.dart';
import '../../../../../infrastructure/routes/providers.dart';
import 'model.dart/book_details_view_state.dart';

/// The [Provider] for the [BookDetailsViewModel]
final bookDetailViewModelProvider = StateNotifierProvider.autoDispose<
    BookDetailsViewModel, BookDetailsScreenViewState>((ref) {
  final booksRepo = ref.watch(booksRepositoryProvider);
  final userRepo = ref.watch(userRepositoryProvider);
  return BookDetailsViewModel(
    booksRepo: booksRepo,
    userRepo: userRepo,
    read: ref.read,
  );
});

/// BookDetailsViewModel
class BookDetailsViewModel extends StateNotifier<BookDetailsScreenViewState> {
  /// [BookDetailsViewModel] constructor
  BookDetailsViewModel({
    required final IBooksRepository booksRepo,
    required final IUserRepository userRepo,
    required final Reader read,
  })  : _booksRepo = booksRepo,
        _userRepo = userRepo,
        _read = read,
        super(const BookDetailsScreenViewState());

  final IBooksRepository _booksRepo;

  final IUserRepository _userRepo;

  final Reader _read;

  /// Initialises the state for the view
  Future<Either<void, FailureState>> initialiseState(
      {required String bookUid}) async {
    final book = await _booksRepo.fetchBookByUid(uid: bookUid);
    return book.fold(
      (book) {
        state = state.copyWith(book: book);
        return left(null);
      },
      right,
    );
  }

  /// Borrow Button Handler
  Future<void> handleBorrowButton() async {
    // 1. Find first available instance
    late BookInstance bookInstance;
    final instanceQueryResult =
        await _booksRepo.fetchFirstFreeBookInstance(uid: state.book?.uid ?? '');

    await instanceQueryResult.fold(
      (instance) async {
        bookInstance = instance.copyWith(isAvailable: false);
        // 2. Update to be unavailable
        final updateResult =
            await _booksRepo.updateBookInstance(bookInstance: bookInstance);
        // 3. Add new currently borrowed to current user
        await updateResult.fold(
          (_) async {
            // TODO: Properly test as stream can be unstable with reader[Johnny]
            final user = _read(currentUserStreamProvider).data?.value;
            if (user != null) {

              final currentDate = DateTime.now();
              final dueDate = currentDate.add(const Duration(days: 14));

              final borrowedInstance = CurrentlyBorrowedBook(
                uid: const Uuid().v4(),
                bookUid: bookInstance.bookUid,
                isOverdue: false,
                borrowedAt: currentDate,
                returnBy: dueDate,
              );
              await _userRepo.addNewCurrentlyBorrowedEntry(
                  uid: user.uid ?? '',
                  currentlyBorrowedInstance: borrowedInstance);
              final originalNumberAvailable = state.book?.numberAvailable;
              if (originalNumberAvailable != null) {
                state = state.copyWith(
                  book: state.book
                      ?.copyWith(numberAvailable: originalNumberAvailable - 1),
                );
              }
            }
          },
          (failure) => null,
        );
      },
      (failure) => null,
    );
  }
}
