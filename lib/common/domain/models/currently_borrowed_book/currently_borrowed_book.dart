import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../utils/converters.dart';

part 'currently_borrowed_book.freezed.dart';
part 'currently_borrowed_book.g.dart';

/// Currnently Borrowed Book
@freezed
class CurrentlyBorrowedBook with _$CurrentlyBorrowedBook {
  /// [CurrentlyBorrowedBook] factory constructor
  const factory CurrentlyBorrowedBook({
    String? uid,
    String? bookUid,
    bool? isOverdue,
    @TimestampConverter() DateTime? borrowedAt,
    @TimestampConverter() DateTime? returnBy,
  }) = _CurrentlyBorrowedBook;

  const CurrentlyBorrowedBook._();

  /// Helper metheod to create a [CurrentlyBorrowedBook] from a [json] object
  factory CurrentlyBorrowedBook.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyBorrowedBookFromJson(json);
}