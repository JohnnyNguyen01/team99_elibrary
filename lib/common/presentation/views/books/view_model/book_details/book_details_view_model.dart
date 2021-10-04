import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../domain/models/failure/failure.dart';
import '../../../../../domain/repositories/books/books_facade.dart';
import '../../../../../infrastructure/routes/providers.dart';
import 'model.dart/book_details_view_state.dart';

/// The [Provider] for the [BookDetailsViewModel]
final bookDetailViewModelProvider = StateNotifierProvider.autoDispose<
    BookDetailsViewModel, BookDetailsScreenViewState>((ref) {
  final booksRepo = ref.watch(booksRepositoryProvider);
  return BookDetailsViewModel(booksRepo: booksRepo);
});

/// BookDetailsViewModel
class BookDetailsViewModel extends StateNotifier<BookDetailsScreenViewState> {
  /// [BookDetailsViewModel] constructor
  BookDetailsViewModel({
    required final IBooksRepository booksRepo,
  })  : _booksRepo = booksRepo,
        super(const BookDetailsScreenViewState());

  final IBooksRepository _booksRepo;

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
}
