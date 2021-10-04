import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_instance.freezed.dart';
part 'book_instance.g.dart';

/// A Book Instance
@freezed
class BookInstance with _$BookInstance {
  /// [BookInstance] constructor
  const factory BookInstance({
    @Default(false) bool isAvailable,
    String? uid,
    String? borrowerUid,
    String? bookUid,
  }) = _BookInstance;

  const BookInstance._();

  /// Helper method to create a [BookInstance] from a [json] object
  factory BookInstance.fromJson(Map<String, dynamic> json) =>
      _$BookInstanceFromJson(json);
}
