// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookInstance _$_$_BookInstanceFromJson(Map<String, dynamic> json) {
  return _$_BookInstance(
    isAvailable: json['isAvailable'] as bool? ?? false,
    uid: json['uid'] as String?,
    borrowerUid: json['borrowerUid'] as String?,
    bookUid: json['bookUid'] as String?,
  );
}

Map<String, dynamic> _$_$_BookInstanceToJson(_$_BookInstance instance) =>
    <String, dynamic>{
      'isAvailable': instance.isAvailable,
      'uid': instance.uid,
      'borrowerUid': instance.borrowerUid,
      'bookUid': instance.bookUid,
    };
