// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currently_borrowed_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentlyBorrowedBook _$_$_CurrentlyBorrowedBookFromJson(
    Map<String, dynamic> json) {
  return _$_CurrentlyBorrowedBook(
    uid: json['uid'] as String?,
    bookUid: json['bookUid'] as String?,
    isOverdue: json['isOverdue'] as bool?,
    borrowedAt:
        const TimestampConverter().fromJson(json['borrowedAt'] as Timestamp?),
    returnBy:
        const TimestampConverter().fromJson(json['returnBy'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_CurrentlyBorrowedBookToJson(
        _$_CurrentlyBorrowedBook instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'bookUid': instance.bookUid,
      'isOverdue': instance.isOverdue,
      'borrowedAt': const TimestampConverter().toJson(instance.borrowedAt),
      'returnBy': const TimestampConverter().toJson(instance.returnBy),
    };
