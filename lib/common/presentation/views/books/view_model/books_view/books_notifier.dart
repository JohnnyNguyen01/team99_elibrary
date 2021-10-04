import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/repositories/books/books_facade.dart';
import '../../../../../infrastructure/routes/providers.dart';
import '../../../../../utils/constants.dart';
import 'books_view_model.dart';

/// The [BooksScreenNotifier] provider
final booksViewModel =
    StateNotifierProvider.autoDispose<BooksScreenNotifier, BooksViewModel>(
        (ref) {
  final booksRepo = ref.watch(booksRepositoryProvider);
  return BooksScreenNotifier(booksRepo: booksRepo);
});

/// Books Screen View Model
class BooksScreenNotifier extends StateNotifier<BooksViewModel> {
  /// BooksScreenNotifier constructor
  BooksScreenNotifier({required final IBooksRepository booksRepo})
      : _booksRepo = booksRepo,
        super(const BooksViewModel());

  /// BooksRepository
  final IBooksRepository _booksRepo;

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
}
