import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/repositories/books/books_facade.dart';
import '../../../../infrastructure/routes/providers.dart';
import 'books_view_model.dart';

/// The [BooksScreenNotifier] provider
final booksViewModel =
    StateNotifierProvider<BooksScreenNotifier, BooksViewModel>((ref) {
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
    print(singleBook.data);
    // final book = singleBook.data;
    // if (book != null) {
    //   state = state.copyWith(books: [book]);
    // }
  }
}
