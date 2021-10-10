// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'admin_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdminScreenStateTearOff {
  const _$AdminScreenStateTearOff();

  _AdminScreenState call({AdminTabs currentTab = AdminTabs.bookRequests}) {
    return _AdminScreenState(
      currentTab: currentTab,
    );
  }
}

/// @nodoc
const $AdminScreenState = _$AdminScreenStateTearOff();

/// @nodoc
mixin _$AdminScreenState {
  AdminTabs get currentTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminScreenStateCopyWith<AdminScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminScreenStateCopyWith<$Res> {
  factory $AdminScreenStateCopyWith(
          AdminScreenState value, $Res Function(AdminScreenState) then) =
      _$AdminScreenStateCopyWithImpl<$Res>;
  $Res call({AdminTabs currentTab});
}

/// @nodoc
class _$AdminScreenStateCopyWithImpl<$Res>
    implements $AdminScreenStateCopyWith<$Res> {
  _$AdminScreenStateCopyWithImpl(this._value, this._then);

  final AdminScreenState _value;
  // ignore: unused_field
  final $Res Function(AdminScreenState) _then;

  @override
  $Res call({
    Object? currentTab = freezed,
  }) {
    return _then(_value.copyWith(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as AdminTabs,
    ));
  }
}

/// @nodoc
abstract class _$AdminScreenStateCopyWith<$Res>
    implements $AdminScreenStateCopyWith<$Res> {
  factory _$AdminScreenStateCopyWith(
          _AdminScreenState value, $Res Function(_AdminScreenState) then) =
      __$AdminScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({AdminTabs currentTab});
}

/// @nodoc
class __$AdminScreenStateCopyWithImpl<$Res>
    extends _$AdminScreenStateCopyWithImpl<$Res>
    implements _$AdminScreenStateCopyWith<$Res> {
  __$AdminScreenStateCopyWithImpl(
      _AdminScreenState _value, $Res Function(_AdminScreenState) _then)
      : super(_value, (v) => _then(v as _AdminScreenState));

  @override
  _AdminScreenState get _value => super._value as _AdminScreenState;

  @override
  $Res call({
    Object? currentTab = freezed,
  }) {
    return _then(_AdminScreenState(
      currentTab: currentTab == freezed
          ? _value.currentTab
          : currentTab // ignore: cast_nullable_to_non_nullable
              as AdminTabs,
    ));
  }
}

/// @nodoc

class _$_AdminScreenState implements _AdminScreenState {
  const _$_AdminScreenState({this.currentTab = AdminTabs.bookRequests});

  @JsonKey(defaultValue: AdminTabs.bookRequests)
  @override
  final AdminTabs currentTab;

  @override
  String toString() {
    return 'AdminScreenState(currentTab: $currentTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminScreenState &&
            (identical(other.currentTab, currentTab) ||
                const DeepCollectionEquality()
                    .equals(other.currentTab, currentTab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(currentTab);

  @JsonKey(ignore: true)
  @override
  _$AdminScreenStateCopyWith<_AdminScreenState> get copyWith =>
      __$AdminScreenStateCopyWithImpl<_AdminScreenState>(this, _$identity);
}

abstract class _AdminScreenState implements AdminScreenState {
  const factory _AdminScreenState({AdminTabs currentTab}) = _$_AdminScreenState;

  @override
  AdminTabs get currentTab => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdminScreenStateCopyWith<_AdminScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
