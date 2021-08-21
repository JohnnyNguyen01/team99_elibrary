// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {bool isAuthenticated = false,
      bool isInitialized = false,
      bool showTour = false}) {
    return _AppState(
      isAuthenticated: isAuthenticated,
      isInitialized: isInitialized,
      showTour: showTour,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isInitialized => throw _privateConstructorUsedError;
  bool get showTour => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({bool isAuthenticated, bool isInitialized, bool showTour});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? isInitialized = freezed,
    Object? showTour = freezed,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      showTour: showTour == freezed
          ? _value.showTour
          : showTour // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isAuthenticated, bool isInitialized, bool showTour});
}

/// @nodoc
class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object? isAuthenticated = freezed,
    Object? isInitialized = freezed,
    Object? showTour = freezed,
  }) {
    return _then(_AppState(
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isInitialized: isInitialized == freezed
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      showTour: showTour == freezed
          ? _value.showTour
          : showTour // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AppState implements _AppState {
  const _$_AppState(
      {this.isAuthenticated = false,
      this.isInitialized = false,
      this.showTour = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isAuthenticated;
  @JsonKey(defaultValue: false)
  @override
  final bool isInitialized;
  @JsonKey(defaultValue: false)
  @override
  final bool showTour;

  @override
  String toString() {
    return 'AppState(isAuthenticated: $isAuthenticated, isInitialized: $isInitialized, showTour: $showTour)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.isInitialized, isInitialized) ||
                const DeepCollectionEquality()
                    .equals(other.isInitialized, isInitialized)) &&
            (identical(other.showTour, showTour) ||
                const DeepCollectionEquality()
                    .equals(other.showTour, showTour)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(isInitialized) ^
      const DeepCollectionEquality().hash(showTour);

  @JsonKey(ignore: true)
  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);
}

abstract class _AppState implements AppState {
  const factory _AppState(
      {bool isAuthenticated, bool isInitialized, bool showTour}) = _$_AppState;

  @override
  bool get isAuthenticated => throw _privateConstructorUsedError;
  @override
  bool get isInitialized => throw _privateConstructorUsedError;
  @override
  bool get showTour => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AppStateCopyWith<_AppState> get copyWith =>
      throw _privateConstructorUsedError;
}
