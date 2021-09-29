import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/models/book/book.dart';

part 'books_view_model.freezed.dart';

/// The Books Screen ViewModel
@freezed
class BooksViewModel with _$BooksViewModel {
  /// [BooksViewModel] factory constructor
  const factory BooksViewModel({
    @Default(<Book>[]) List<Book> books,
  }) = _BooksViewModel;
}
