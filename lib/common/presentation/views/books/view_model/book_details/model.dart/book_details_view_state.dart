import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../domain/models/book/book.dart';

part 'book_details_view_state.freezed.dart';

/// Book Details Screen View State
@freezed
class BookDetailsScreenViewState with _$BookDetailsScreenViewState {
  /// [BookDetailsScreenViewState] constructor
  const factory BookDetailsScreenViewState({
    final Book? book,
  }) = _BookDetailsScreenViewState;
}
