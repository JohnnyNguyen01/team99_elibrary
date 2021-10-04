// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QueryResultTearOff {
  const _$QueryResultTearOff();

  _QueryResult call(
      {required Map<String, dynamic> queryData,
      Map<String, dynamic>? highlightResult}) {
    return _QueryResult(
      queryData: queryData,
      highlightResult: highlightResult,
    );
  }
}

/// @nodoc
const $QueryResult = _$QueryResultTearOff();

/// @nodoc
mixin _$QueryResult {
  Map<String, dynamic> get queryData => throw _privateConstructorUsedError;
  Map<String, dynamic>? get highlightResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryResultCopyWith<QueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResultCopyWith<$Res> {
  factory $QueryResultCopyWith(
          QueryResult value, $Res Function(QueryResult) then) =
      _$QueryResultCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> queryData, Map<String, dynamic>? highlightResult});
}

/// @nodoc
class _$QueryResultCopyWithImpl<$Res> implements $QueryResultCopyWith<$Res> {
  _$QueryResultCopyWithImpl(this._value, this._then);

  final QueryResult _value;
  // ignore: unused_field
  final $Res Function(QueryResult) _then;

  @override
  $Res call({
    Object? queryData = freezed,
    Object? highlightResult = freezed,
  }) {
    return _then(_value.copyWith(
      queryData: queryData == freezed
          ? _value.queryData
          : queryData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      highlightResult: highlightResult == freezed
          ? _value.highlightResult
          : highlightResult // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$QueryResultCopyWith<$Res>
    implements $QueryResultCopyWith<$Res> {
  factory _$QueryResultCopyWith(
          _QueryResult value, $Res Function(_QueryResult) then) =
      __$QueryResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> queryData, Map<String, dynamic>? highlightResult});
}

/// @nodoc
class __$QueryResultCopyWithImpl<$Res> extends _$QueryResultCopyWithImpl<$Res>
    implements _$QueryResultCopyWith<$Res> {
  __$QueryResultCopyWithImpl(
      _QueryResult _value, $Res Function(_QueryResult) _then)
      : super(_value, (v) => _then(v as _QueryResult));

  @override
  _QueryResult get _value => super._value as _QueryResult;

  @override
  $Res call({
    Object? queryData = freezed,
    Object? highlightResult = freezed,
  }) {
    return _then(_QueryResult(
      queryData: queryData == freezed
          ? _value.queryData
          : queryData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      highlightResult: highlightResult == freezed
          ? _value.highlightResult
          : highlightResult // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_QueryResult implements _QueryResult {
  const _$_QueryResult({required this.queryData, this.highlightResult});

  @override
  final Map<String, dynamic> queryData;
  @override
  final Map<String, dynamic>? highlightResult;

  @override
  String toString() {
    return 'QueryResult(queryData: $queryData, highlightResult: $highlightResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryResult &&
            (identical(other.queryData, queryData) ||
                const DeepCollectionEquality()
                    .equals(other.queryData, queryData)) &&
            (identical(other.highlightResult, highlightResult) ||
                const DeepCollectionEquality()
                    .equals(other.highlightResult, highlightResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(queryData) ^
      const DeepCollectionEquality().hash(highlightResult);

  @JsonKey(ignore: true)
  @override
  _$QueryResultCopyWith<_QueryResult> get copyWith =>
      __$QueryResultCopyWithImpl<_QueryResult>(this, _$identity);
}

abstract class _QueryResult implements QueryResult {
  const factory _QueryResult(
      {required Map<String, dynamic> queryData,
      Map<String, dynamic>? highlightResult}) = _$_QueryResult;

  @override
  Map<String, dynamic> get queryData => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic>? get highlightResult =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QueryResultCopyWith<_QueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}
