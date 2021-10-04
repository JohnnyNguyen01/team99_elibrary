// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_highlight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchHighlight _$SearchHighlightFromJson(Map<String, dynamic> json) {
  return _SearchHighlight.fromJson(json);
}

/// @nodoc
class _$SearchHighlightTearOff {
  const _$SearchHighlightTearOff();

  _SearchHighlight call(
      {String objectId = '',
      String authorName = '',
      List<String> categories = const <String>[],
      String name = '',
      String? imageUrl}) {
    return _SearchHighlight(
      objectId: objectId,
      authorName: authorName,
      categories: categories,
      name: name,
      imageUrl: imageUrl,
    );
  }

  SearchHighlight fromJson(Map<String, Object> json) {
    return SearchHighlight.fromJson(json);
  }
}

/// @nodoc
const $SearchHighlight = _$SearchHighlightTearOff();

/// @nodoc
mixin _$SearchHighlight {
  String get objectId => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchHighlightCopyWith<SearchHighlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHighlightCopyWith<$Res> {
  factory $SearchHighlightCopyWith(
          SearchHighlight value, $Res Function(SearchHighlight) then) =
      _$SearchHighlightCopyWithImpl<$Res>;
  $Res call(
      {String objectId,
      String authorName,
      List<String> categories,
      String name,
      String? imageUrl});
}

/// @nodoc
class _$SearchHighlightCopyWithImpl<$Res>
    implements $SearchHighlightCopyWith<$Res> {
  _$SearchHighlightCopyWithImpl(this._value, this._then);

  final SearchHighlight _value;
  // ignore: unused_field
  final $Res Function(SearchHighlight) _then;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? authorName = freezed,
    Object? categories = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SearchHighlightCopyWith<$Res>
    implements $SearchHighlightCopyWith<$Res> {
  factory _$SearchHighlightCopyWith(
          _SearchHighlight value, $Res Function(_SearchHighlight) then) =
      __$SearchHighlightCopyWithImpl<$Res>;
  @override
  $Res call(
      {String objectId,
      String authorName,
      List<String> categories,
      String name,
      String? imageUrl});
}

/// @nodoc
class __$SearchHighlightCopyWithImpl<$Res>
    extends _$SearchHighlightCopyWithImpl<$Res>
    implements _$SearchHighlightCopyWith<$Res> {
  __$SearchHighlightCopyWithImpl(
      _SearchHighlight _value, $Res Function(_SearchHighlight) _then)
      : super(_value, (v) => _then(v as _SearchHighlight));

  @override
  _SearchHighlight get _value => super._value as _SearchHighlight;

  @override
  $Res call({
    Object? objectId = freezed,
    Object? authorName = freezed,
    Object? categories = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_SearchHighlight(
      objectId: objectId == freezed
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchHighlight extends _SearchHighlight {
  const _$_SearchHighlight(
      {this.objectId = '',
      this.authorName = '',
      this.categories = const <String>[],
      this.name = '',
      this.imageUrl})
      : super._();

  factory _$_SearchHighlight.fromJson(Map<String, dynamic> json) =>
      _$_$_SearchHighlightFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String objectId;
  @JsonKey(defaultValue: '')
  @override
  final String authorName;
  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> categories;
  @JsonKey(defaultValue: '')
  @override
  final String name;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'SearchHighlight(objectId: $objectId, authorName: $authorName, categories: $categories, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchHighlight &&
            (identical(other.objectId, objectId) ||
                const DeepCollectionEquality()
                    .equals(other.objectId, objectId)) &&
            (identical(other.authorName, authorName) ||
                const DeepCollectionEquality()
                    .equals(other.authorName, authorName)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(objectId) ^
      const DeepCollectionEquality().hash(authorName) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$SearchHighlightCopyWith<_SearchHighlight> get copyWith =>
      __$SearchHighlightCopyWithImpl<_SearchHighlight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SearchHighlightToJson(this);
  }
}

abstract class _SearchHighlight extends SearchHighlight {
  const factory _SearchHighlight(
      {String objectId,
      String authorName,
      List<String> categories,
      String name,
      String? imageUrl}) = _$_SearchHighlight;
  const _SearchHighlight._() : super._();

  factory _SearchHighlight.fromJson(Map<String, dynamic> json) =
      _$_SearchHighlight.fromJson;

  @override
  String get objectId => throw _privateConstructorUsedError;
  @override
  String get authorName => throw _privateConstructorUsedError;
  @override
  List<String> get categories => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchHighlightCopyWith<_SearchHighlight> get copyWith =>
      throw _privateConstructorUsedError;
}
