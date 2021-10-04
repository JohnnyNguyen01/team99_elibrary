// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'book_details_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookDetailsScreenViewStateTearOff {
  const _$BookDetailsScreenViewStateTearOff();

  _BookDetailsScreenViewState call({Book? book}) {
    return _BookDetailsScreenViewState(
      book: book,
    );
  }
}

/// @nodoc
const $BookDetailsScreenViewState = _$BookDetailsScreenViewStateTearOff();

/// @nodoc
mixin _$BookDetailsScreenViewState {
  Book? get book => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookDetailsScreenViewStateCopyWith<BookDetailsScreenViewState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailsScreenViewStateCopyWith<$Res> {
  factory $BookDetailsScreenViewStateCopyWith(BookDetailsScreenViewState value,
          $Res Function(BookDetailsScreenViewState) then) =
      _$BookDetailsScreenViewStateCopyWithImpl<$Res>;
  $Res call({Book? book});

  $BookCopyWith<$Res>? get book;
}

/// @nodoc
class _$BookDetailsScreenViewStateCopyWithImpl<$Res>
    implements $BookDetailsScreenViewStateCopyWith<$Res> {
  _$BookDetailsScreenViewStateCopyWithImpl(this._value, this._then);

  final BookDetailsScreenViewState _value;
  // ignore: unused_field
  final $Res Function(BookDetailsScreenViewState) _then;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
    ));
  }

  @override
  $BookCopyWith<$Res>? get book {
    if (_value.book == null) {
      return null;
    }

    return $BookCopyWith<$Res>(_value.book!, (value) {
      return _then(_value.copyWith(book: value));
    });
  }
}

/// @nodoc
abstract class _$BookDetailsScreenViewStateCopyWith<$Res>
    implements $BookDetailsScreenViewStateCopyWith<$Res> {
  factory _$BookDetailsScreenViewStateCopyWith(
          _BookDetailsScreenViewState value,
          $Res Function(_BookDetailsScreenViewState) then) =
      __$BookDetailsScreenViewStateCopyWithImpl<$Res>;
  @override
  $Res call({Book? book});

  @override
  $BookCopyWith<$Res>? get book;
}

/// @nodoc
class __$BookDetailsScreenViewStateCopyWithImpl<$Res>
    extends _$BookDetailsScreenViewStateCopyWithImpl<$Res>
    implements _$BookDetailsScreenViewStateCopyWith<$Res> {
  __$BookDetailsScreenViewStateCopyWithImpl(_BookDetailsScreenViewState _value,
      $Res Function(_BookDetailsScreenViewState) _then)
      : super(_value, (v) => _then(v as _BookDetailsScreenViewState));

  @override
  _BookDetailsScreenViewState get _value =>
      super._value as _BookDetailsScreenViewState;

  @override
  $Res call({
    Object? book = freezed,
  }) {
    return _then(_BookDetailsScreenViewState(
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
    ));
  }
}

/// @nodoc

class _$_BookDetailsScreenViewState implements _BookDetailsScreenViewState {
  const _$_BookDetailsScreenViewState({this.book});

  @override
  final Book? book;

  @override
  String toString() {
    return 'BookDetailsScreenViewState(book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookDetailsScreenViewState &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(book);

  @JsonKey(ignore: true)
  @override
  _$BookDetailsScreenViewStateCopyWith<_BookDetailsScreenViewState>
      get copyWith => __$BookDetailsScreenViewStateCopyWithImpl<
          _BookDetailsScreenViewState>(this, _$identity);
}

abstract class _BookDetailsScreenViewState
    implements BookDetailsScreenViewState {
  const factory _BookDetailsScreenViewState({Book? book}) =
      _$_BookDetailsScreenViewState;

  @override
  Book? get book => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookDetailsScreenViewStateCopyWith<_BookDetailsScreenViewState>
      get copyWith => throw _privateConstructorUsedError;
}
