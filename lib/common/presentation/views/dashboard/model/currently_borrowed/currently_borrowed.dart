import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../domain/models/book/book.dart';
import '../../../../../domain/models/currently_borrowed_book/currently_borrowed_book.dart';
part 'currently_borrowed.freezed.dart';

/// [CurrentlyBorrowed]
///
/// A currently borrowed user isntance and its associated book
@freezed
class CurrentlyBorrowed with _$CurrentlyBorrowed {
  /// [CurrentlyBorrowed] constructor
  const factory CurrentlyBorrowed({
    CurrentlyBorrowedBook? currentlyBorrowedBook,
    Book? book,
  }) = _CurrentlyBorrowed;
}
