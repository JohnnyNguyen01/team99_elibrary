// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$_$_BookFromJson(Map<String, dynamic> json) {
  return _$_Book(
    uid: json['uid'] as String?,
    name: json['name'] as String?,
    authorId: json['authorId'] as String?,
    categories: (json['categories'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    imageUrl: json['imageUrl'] as String?,
    downloadUrl: json['downloadUrl'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$_$_BookToJson(_$_Book instance) => <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'authorId': instance.authorId,
      'categories': instance.categories,
      'imageUrl': instance.imageUrl,
      'downloadUrl': instance.downloadUrl,
      'description': instance.description,
    };
