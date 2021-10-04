import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../../../../authentication/providers.dart';
import '../../../../../domain/models/book/book.dart';
import '../../../../../domain/models/book_instance/book_instance.dart';
import '../../../../../domain/models/currently_borrowed_book/currently_borrowed_book.dart';
import '../../../../../domain/repositories/books/books_facade.dart';
import '../../../../../domain/repositories/user/user_repository_facade.dart';
import '../../../../../infrastructure/routes/providers.dart';
import '../../../../../utils/constants.dart';
import 'books_view_model.dart';

/// The [BooksScreenNotifier] provider
final booksViewModel =
    StateNotifierProvider.autoDispose<BooksScreenNotifier, BooksViewModel>(
        (ref) {
  final booksRepo = ref.watch(booksRepositoryProvider);
  final userRepo = ref.watch(userRepositoryProvider);
  return BooksScreenNotifier(
    userRepo: userRepo,
    booksRepo: booksRepo,
    read: ref.read,
  );
});

/// Books Screen View Model
class BooksScreenNotifier extends StateNotifier<BooksViewModel> {
  /// BooksScreenNotifier constructor
  BooksScreenNotifier({
    required final IBooksRepository booksRepo,
    required final Reader read,
    required final IUserRepository userRepo,
  })  : _booksRepo = booksRepo,
        _read = read,
        _userRepo = userRepo,
        super(const BooksViewModel());

  /// BooksRepository
  final IBooksRepository _booksRepo;

  /// UserRepository
  final IUserRepository _userRepo;

  /// Provider Reader
  final Reader _read;

  /// get the current books list
  Future<void> setBooksList() async {
    final singleBook = await _booksRepo.fetchAllBooks();
    singleBook.fold(
      (bookList) {
        state = state.copyWith(books: bookList);
      },
      (failState) => null,
    );
  }

  /// Set the grid-view-size according to the current viewport width
  /// for responsiveness
  int setGridViewSize({required double screenWidth}) {
    if (screenWidth > largeScreenWidth) {
      return 6;
    } else if (screenWidth <= largeScreenWidth &&
        screenWidth >= mediumScreenWidth) {
      return 4;
    } else if (screenWidth <= mediumScreenWidth &&
        screenWidth >= smallScreenWidth) {
      return 3;
    } else {
      return 2;
    }
  }

  /// Borrow Button Handler
  Future<void> handleBorrowButton({required Book book}) async {
    // 1. Find first available instance
    late BookInstance bookInstance;
    final instanceQueryResult =
        await _booksRepo.fetchFirstFreeBookInstance(uid: book.uid ?? '');

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
              final borrowedInstance = CurrentlyBorrowedBook(
                uid: const Uuid().v4(),
                bookUid: bookInstance.bookUid,
                isOverdue: false,
                // borrowedAt: DateTime.now(),
                // returnBy: DateTime(2021, 10, 29),
              );
              await _userRepo.addNewCurrentlyBorrowedEntry(
                  uid: user.uid ?? '',
                  currentlyBorrowedInstance: borrowedInstance);
              // Adds extra code, but reduces backend read by one
              final currentBookList = state.books
                ..removeWhere((element) => element.uid == book.uid);

              final newBookList = [
                ...currentBookList,
                book.copyWith(numberAvailable: book.numberAvailable - 1)
              ];
              state = state.copyWith(books: newBookList);
            }
          },
          (failure) => null,
        );
      },
      (failure) => null,
    );
  }
}
