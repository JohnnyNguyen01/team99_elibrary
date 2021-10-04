import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

/// A [Book] model
@freezed
class Book with _$Book {
  /// [Book] factory constructor
  const factory Book({
    String? uid,
    String? name,
    String? authorId,
    List<String>? categories,
    String? imageUrl,
    String? downloadUrl,
    String? description,
  }) = _Book;

  const Book._();

  /// Creates an instance of [Book] from a [json]
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
