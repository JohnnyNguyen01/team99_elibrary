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
      List<String> currentlyBorrowedHeaders = const <String>[
        ' ',
        'Book Name',
        'Date Borrowed',
        'Due Date',
        'Transaction ID'
      ],
      List<CurrentlyBorrowed> currentlyBorrowedList =
          const <CurrentlyBorrowed>[],
      DashboardTabs currentTab = DashboardTabs.currentlyBorrowing}) {
    return _DashboardViewState(
      isLoading: isLoading,
      currentlyBorrowedHeaders: currentlyBorrowedHeaders,
      currentlyBorrowedList: currentlyBorrowedList,
      currentTab: currentTab,
    );
  }
}

/// @nodoc
const $DashboardViewState = _$DashboardViewStateTearOff();

/// @nodoc
mixin _$DashboardViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<String> get currentlyBorrowedHeaders =>
      throw _privateConstructorUsedError;
  List<CurrentlyBorrowed> get currentlyBorrowedList =>
      throw _privateConstructorUsedError;
  DashboardTabs get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardViewStateCopyWith<DashboardViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardViewStateCopyWith<$Res> {
  factory $DashboardViewStateCopyWith(
          DashboardViewState value, $Res Function(DashboardViewState) then) =
      _$DashboardViewStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<String> currentlyBorrowedHeaders,
      List<CurrentlyBorrowed> currentlyBorrowedList,
      DashboardTabs currentTab});
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
    Object? currentlyBorrowedHeaders = freezed,
    Object? currentlyBorrowedList = freezed,
    Object? currentTab = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentlyBorrowedHeaders: currentlyBorrowedHeaders == freezed
          ? _value.currentlyBorrowedHeaders
          : currentlyBorrowedHeaders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentlyBorrowedList: currentlyBorrowedList == freezed
          ? _value.currentlyBorrowedList
          : currentlyBorrowedList // ignore: cast_nullable_to_non_nullable
              as List<CurrentlyBorrowed>,
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as DashboardTabs,
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
  $Res call(
      {bool isLoading,
      List<String> currentlyBorrowedHeaders,
      List<CurrentlyBorrowed> currentlyBorrowedList,
      DashboardTabs currentTab});
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
    Object? currentlyBorrowedHeaders = freezed,
    Object? currentlyBorrowedList = freezed,
    Object? currentTab = freezed,
  }) {
    return _then(_DashboardViewState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentlyBorrowedHeaders: currentlyBorrowedHeaders == freezed
          ? _value.currentlyBorrowedHeaders
          : currentlyBorrowedHeaders // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentlyBorrowedList: currentlyBorrowedList == freezed
          ? _value.currentlyBorrowedList
          : currentlyBorrowedList // ignore: cast_nullable_to_non_nullable
              as List<CurrentlyBorrowed>,
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as DashboardTabs,
    ));
  }
}

/// @nodoc

class _$_DashboardViewState implements _DashboardViewState {
  const _$_DashboardViewState(
      {this.isLoading = false,
      this.currentlyBorrowedHeaders = const <String>[
        ' ',
        'Book Name',
        'Date Borrowed',
        'Due Date',
        'Transaction ID'
      ],
      this.currentlyBorrowedList = const <CurrentlyBorrowed>[],
      this.currentTab = DashboardTabs.currentlyBorrowing});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: const <String>[
    ' ',
    'Book Name',
    'Date Borrowed',
    'Due Date',
    'Transaction ID'
  ])
  @override
  final List<String> currentlyBorrowedHeaders;
  @JsonKey(defaultValue: const <CurrentlyBorrowed>[])
  @override
  final List<CurrentlyBorrowed> currentlyBorrowedList;
  @JsonKey(defaultValue: DashboardTabs.currentlyBorrowing)
  @override
  final DashboardTabs currentTab;

  @override
  String toString() {
    return 'DashboardViewState(isLoading: $isLoading, currentlyBorrowedHeaders: $currentlyBorrowedHeaders, currentlyBorrowedList: $currentlyBorrowedList, currentTab: $currentTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardViewState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(
                    other.currentlyBorrowedHeaders, currentlyBorrowedHeaders) ||
                const DeepCollectionEquality().equals(
                    other.currentlyBorrowedHeaders,
                    currentlyBorrowedHeaders)) &&
            (identical(other.currentlyBorrowedList, currentlyBorrowedList) ||
                const DeepCollectionEquality().equals(
                    other.currentlyBorrowedList, currentlyBorrowedList)) &&
            (identical(other.currentTab, currentTab) ||
                const DeepCollectionEquality()
                    .equals(other.currentTab, currentTab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(currentlyBorrowedHeaders) ^
      const DeepCollectionEquality().hash(currentlyBorrowedList) ^
      const DeepCollectionEquality().hash(currentTab);

  @JsonKey(ignore: true)
  @override
  _$DashboardViewStateCopyWith<_DashboardViewState> get copyWith =>
      __$DashboardViewStateCopyWithImpl<_DashboardViewState>(this, _$identity);
}

abstract class _DashboardViewState implements DashboardViewState {
  const factory _DashboardViewState(
      {bool isLoading,
      List<String> currentlyBorrowedHeaders,
      List<CurrentlyBorrowed> currentlyBorrowedList,
      DashboardTabs currentTab}) = _$_DashboardViewState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<String> get currentlyBorrowedHeaders =>
      throw _privateConstructorUsedError;
  @override
  List<CurrentlyBorrowed> get currentlyBorrowedList =>
      throw _privateConstructorUsedError;
  @override
  DashboardTabs get currentTab => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DashboardViewStateCopyWith<_DashboardViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
