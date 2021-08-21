// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureStateTearOff {
  const _$FailureStateTearOff();

  _FailureState call(String? message) {
    return _FailureState(
      message,
    );
  }

  NetworkFailureState network(String? message) {
    return NetworkFailureState(
      message,
    );
  }
}

/// @nodoc
const $FailureState = _$FailureStateTearOff();

/// @nodoc
mixin _$FailureState {
  String? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FailureState value) $default, {
    required TResult Function(NetworkFailureState value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FailureState value)? $default, {
    TResult Function(NetworkFailureState value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureStateCopyWith<FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureStateCopyWith<$Res> {
  factory $FailureStateCopyWith(
          FailureState value, $Res Function(FailureState) then) =
      _$FailureStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$FailureStateCopyWithImpl<$Res> implements $FailureStateCopyWith<$Res> {
  _$FailureStateCopyWithImpl(this._value, this._then);

  final FailureState _value;
  // ignore: unused_field
  final $Res Function(FailureState) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$FailureStateCopyWith<$Res>
    implements $FailureStateCopyWith<$Res> {
  factory _$FailureStateCopyWith(
          _FailureState value, $Res Function(_FailureState) then) =
      __$FailureStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$FailureStateCopyWithImpl<$Res> extends _$FailureStateCopyWithImpl<$Res>
    implements _$FailureStateCopyWith<$Res> {
  __$FailureStateCopyWithImpl(
      _FailureState _value, $Res Function(_FailureState) _then)
      : super(_value, (v) => _then(v as _FailureState));

  @override
  _FailureState get _value => super._value as _FailureState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_FailureState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FailureState implements _FailureState {
  const _$_FailureState(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'FailureState(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureStateCopyWith<_FailureState> get copyWith =>
      __$FailureStateCopyWithImpl<_FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) network,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? network,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FailureState value) $default, {
    required TResult Function(NetworkFailureState value) network,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FailureState value)? $default, {
    TResult Function(NetworkFailureState value)? network,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements FailureState {
  const factory _FailureState(String? message) = _$_FailureState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FailureStateCopyWith<_FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureStateCopyWith<$Res>
    implements $FailureStateCopyWith<$Res> {
  factory $NetworkFailureStateCopyWith(
          NetworkFailureState value, $Res Function(NetworkFailureState) then) =
      _$NetworkFailureStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$NetworkFailureStateCopyWithImpl<$Res>
    extends _$FailureStateCopyWithImpl<$Res>
    implements $NetworkFailureStateCopyWith<$Res> {
  _$NetworkFailureStateCopyWithImpl(
      NetworkFailureState _value, $Res Function(NetworkFailureState) _then)
      : super(_value, (v) => _then(v as NetworkFailureState));

  @override
  NetworkFailureState get _value => super._value as NetworkFailureState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NetworkFailureState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NetworkFailureState implements NetworkFailureState {
  const _$NetworkFailureState(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'FailureState.network(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NetworkFailureState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $NetworkFailureStateCopyWith<NetworkFailureState> get copyWith =>
      _$NetworkFailureStateCopyWithImpl<NetworkFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) network,
  }) {
    return network(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FailureState value) $default, {
    required TResult Function(NetworkFailureState value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FailureState value)? $default, {
    TResult Function(NetworkFailureState value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class NetworkFailureState implements FailureState {
  const factory NetworkFailureState(String? message) = _$NetworkFailureState;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NetworkFailureStateCopyWith<NetworkFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
