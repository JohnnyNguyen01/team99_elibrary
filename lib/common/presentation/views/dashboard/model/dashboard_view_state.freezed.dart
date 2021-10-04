// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'dashboard_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DashboardViewStateTearOff {
  const _$DashboardViewStateTearOff();

  _DashboardViewState call(
      {bool isLoading = false,
      List<CurrentlyBorrowed> currentlyBorrowedList =
          const <CurrentlyBorrowed>[]}) {
    return _DashboardViewState(
      isLoading: isLoading,
      currentlyBorrowedList: currentlyBorrowedList,
    );
  }
}

/// @nodoc
const $DashboardViewState = _$DashboardViewStateTearOff();

/// @nodoc
mixin _$DashboardViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CurrentlyBorrowed> get currentlyBorrowedList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardViewStateCopyWith<DashboardViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardViewStateCopyWith<$Res> {
  factory $DashboardViewStateCopyWith(
          DashboardViewState value, $Res Function(DashboardViewState) then) =
      _$DashboardViewStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<CurrentlyBorrowed> currentlyBorrowedList});
}

/// @nodoc
class _$DashboardViewStateCopyWithImpl<$Res>
    implements $DashboardViewStateCopyWith<$Res> {
  _$DashboardViewStateCopyWithImpl(this._value, this._then);

  final DashboardViewState _value;
  // ignore: unused_field
  final $Res Function(DashboardViewState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentlyBorrowedList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentlyBorrowedList: currentlyBorrowedList == freezed
          ? _value.currentlyBorrowedList
          : currentlyBorrowedList // ignore: cast_nullable_to_non_nullable
              as List<CurrentlyBorrowed>,
    ));
  }
}

/// @nodoc
abstract class _$DashboardViewStateCopyWith<$Res>
    implements $DashboardViewStateCopyWith<$Res> {
  factory _$DashboardViewStateCopyWith(
          _DashboardViewState value, $Res Function(_DashboardViewState) then) =
      __$DashboardViewStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<CurrentlyBorrowed> currentlyBorrowedList});
}

/// @nodoc
class __$DashboardViewStateCopyWithImpl<$Res>
    extends _$DashboardViewStateCopyWithImpl<$Res>
    implements _$DashboardViewStateCopyWith<$Res> {
  __$DashboardViewStateCopyWithImpl(
      _DashboardViewState _value, $Res Function(_DashboardViewState) _then)
      : super(_value, (v) => _then(v as _DashboardViewState));

  @override
  _DashboardViewState get _value => super._value as _DashboardViewState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? currentlyBorrowedList = freezed,
  }) {
    return _then(_DashboardViewState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentlyBorrowedList: currentlyBorrowedList == freezed
          ? _value.currentlyBorrowedList
          : currentlyBorrowedList // ignore: cast_nullable_to_non_nullable
              as List<CurrentlyBorrowed>,
    ));
  }
}

/// @nodoc

class _$_DashboardViewState implements _DashboardViewState {
  const _$_DashboardViewState(
      {this.isLoading = false,
      this.currentlyBorrowedList = const <CurrentlyBorrowed>[]});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const <CurrentlyBorrowed>[])
  @override
  final List<CurrentlyBorrowed> currentlyBorrowedList;

  @override
  String toString() {
    return 'DashboardViewState(isLoading: $isLoading, currentlyBorrowedList: $currentlyBorrowedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardViewState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.currentlyBorrowedList, currentlyBorrowedList) ||
                const DeepCollectionEquality().equals(
                    other.currentlyBorrowedList, currentlyBorrowedList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentlyBorrowedList);

  @JsonKey(ignore: true)
  @override
  _$DashboardViewStateCopyWith<_DashboardViewState> get copyWith =>
      __$DashboardViewStateCopyWithImpl<_DashboardViewState>(this, _$identity);
}

abstract class _DashboardViewState implements DashboardViewState {
  const factory _DashboardViewState(
      {bool isLoading,
      List<CurrentlyBorrowed> currentlyBorrowedList}) = _$_DashboardViewState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<CurrentlyBorrowed> get currentlyBorrowedList =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DashboardViewStateCopyWith<_DashboardViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
