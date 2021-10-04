// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_highlight.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchHighlight _$_$_SearchHighlightFromJson(Map<String, dynamic> json) {
  return _$_SearchHighlight(
    objectId: json['objectId'] as String? ?? '',
    authorName: json['authorName'] as String? ?? '',
    categories: (json['categories'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList() ??
        [],
    name: json['name'] as String? ?? '',
    imageUrl: json['imageUrl'] as String?,
  );
}

Map<String, dynamic> _$_$_SearchHighlightToJson(_$_SearchHighlight instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'authorName': instance.authorName,
      'categories': instance.categories,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
    };
