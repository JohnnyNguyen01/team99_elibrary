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

  _SuccessResponse<T> call<T>(
      {required String message, String? code, T? payload}) {
    return _SuccessResponse<T>(
      message: message,
      code: code,
      payload: payload,
    );
  }
}

/// @nodoc
const $SuccessResponse = _$SuccessResponseTearOff();

/// @nodoc
mixin _$SuccessResponse<T> {
  String get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  T? get payload => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuccessResponseCopyWith<T, SuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessResponseCopyWith<T, $Res> {
  factory $SuccessResponseCopyWith(
          SuccessResponse<T> value, $Res Function(SuccessResponse<T>) then) =
      _$SuccessResponseCopyWithImpl<T, $Res>;
  $Res call({String message, String? code, T? payload});
}

/// @nodoc
class _$SuccessResponseCopyWithImpl<T, $Res>
    implements $SuccessResponseCopyWith<T, $Res> {
  _$SuccessResponseCopyWithImpl(this._value, this._then);

  final SuccessResponse<T> _value;
  // ignore: unused_field
  final $Res Function(SuccessResponse<T>) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? payload = freezed,
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
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
abstract class _$SuccessResponseCopyWith<T, $Res>
    implements $SuccessResponseCopyWith<T, $Res> {
  factory _$SuccessResponseCopyWith(
          _SuccessResponse<T> value, $Res Function(_SuccessResponse<T>) then) =
      __$SuccessResponseCopyWithImpl<T, $Res>;
  @override
  $Res call({String message, String? code, T? payload});
}

/// @nodoc
class __$SuccessResponseCopyWithImpl<T, $Res>
    extends _$SuccessResponseCopyWithImpl<T, $Res>
    implements _$SuccessResponseCopyWith<T, $Res> {
  __$SuccessResponseCopyWithImpl(
      _SuccessResponse<T> _value, $Res Function(_SuccessResponse<T>) _then)
      : super(_value, (v) => _then(v as _SuccessResponse<T>));

  @override
  _SuccessResponse<T> get _value => super._value as _SuccessResponse<T>;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? payload = freezed,
  }) {
    return _then(_SuccessResponse<T>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$_SuccessResponse<T> implements _SuccessResponse<T> {
  const _$_SuccessResponse({required this.message, this.code, this.payload});

  @override
  final String message;
  @override
  final String? code;
  @override
  final T? payload;

  @override
  String toString() {
    return 'SuccessResponse<$T>(message: $message, code: $code, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessResponse<T> &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$SuccessResponseCopyWith<T, _SuccessResponse<T>> get copyWith =>
      __$SuccessResponseCopyWithImpl<T, _SuccessResponse<T>>(this, _$identity);
}

abstract class _SuccessResponse<T> implements SuccessResponse<T> {
  const factory _SuccessResponse(
      {required String message,
      String? code,
      T? payload}) = _$_SuccessResponse<T>;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  T? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SuccessResponseCopyWith<T, _SuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
