// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResult _$_$_SearchResultFromJson(Map<String, dynamic> json) {
  return _$_SearchResult(
    objectId: json['objectId'] as String,
    title: json['title'] as String? ?? '',
    query: json['query'] as String? ?? '',
    subtitle: json['subtitle'] as String?,
    imageUrl: json['imageUrl'] as String?,
  );
}

Map<String, dynamic> _$_$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'objectId': instance.objectId,
      'title': instance.title,
      'query': instance.query,
      'subtitle': instance.subtitle,
      'imageUrl': instance.imageUrl,
    };
