// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SuccessResponseTearOff {
  const _$SuccessResponseTearOff();

  _SuccessResponse call({required String message, String? code}) {
    return _SuccessResponse(
      message: message,
      code: code,
    );
  }
}

/// @nodoc
const $SuccessResponse = _$SuccessResponseTearOff();

/// @nodoc
mixin _$SuccessResponse {
  String get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<$Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse value, $Res Function(SuccessResponse) then) =
      _$SuccessResponseCopyWithImpl<$Res>;
  $Res call({String message, String? code});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  final SuccessResponse _value;
  // ignore: unused_field
  final $Res Function(SuccessResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SuccessResponseCopyWith<$Res>
    implements $SuccessResponseCopyWith<$Res> {
  factory _$SuccessResponseCopyWith(
          _SuccessResponse value, $Res Function(_SuccessResponse) then) =
      __$SuccessResponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, String? code});
}

/// @nodoc
class __$SuccessResponseCopyWithImpl<$Res>
    extends _$SuccessResponseCopyWithImpl<$Res>
    implements _$SuccessResponseCopyWith<$Res> {
  __$SuccessResponseCopyWithImpl(
      _SuccessResponse _value, $Res Function(_SuccessResponse) _then)
      : super(_value, (v) => _then(v as _SuccessResponse));

  @override
  _SuccessResponse get _value => super._value as _SuccessResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_SuccessResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SuccessResponse implements _SuccessResponse {
  const _$_SuccessResponse({required this.message, this.code});

  @override
  final String message;
  @override
  final String? code;

  @override
  String toString() {
    return 'SuccessResponse(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessResponse &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      __$SuccessResponseCopyWithImpl<_SuccessResponse>(this, _$identity);
}

abstract class _SuccessResponse implements SuccessResponse {
  const factory _SuccessResponse({required String message, String? code}) =
      _$_SuccessResponse;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessResponseCopyWith<_SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
