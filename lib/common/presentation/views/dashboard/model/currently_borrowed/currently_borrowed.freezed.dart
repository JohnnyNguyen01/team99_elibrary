// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'currently_borrowed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentlyBorrowedTearOff {
  const _$CurrentlyBorrowedTearOff();

  _CurrentlyBorrowed call(
      {CurrentlyBorrowedBook? currentlyBorrowedBook, Book? book}) {
    return _CurrentlyBorrowed(
      currentlyBorrowedBook: currentlyBorrowedBook,
      book: book,
    );
  }
}

/// @nodoc
const $CurrentlyBorrowed = _$CurrentlyBorrowedTearOff();

/// @nodoc
mixin _$CurrentlyBorrowed {
  CurrentlyBorrowedBook? get currentlyBorrowedBook =>
      throw _privateConstructorUsedError;
  Book? get book => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentlyBorrowedCopyWith<CurrentlyBorrowed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentlyBorrowedCopyWith<$Res> {
  factory $CurrentlyBorrowedCopyWith(
          CurrentlyBorrowed value, $Res Function(CurrentlyBorrowed) then) =
      _$CurrentlyBorrowedCopyWithImpl<$Res>;
  $Res call({CurrentlyBorrowedBook? currentlyBorrowedBook, Book? book});

  $CurrentlyBorrowedBookCopyWith<$Res>? get currentlyBorrowedBook;
  $BookCopyWith<$Res>? get book;
}

/// @nodoc
class _$CurrentlyBorrowedCopyWithImpl<$Res>
    implements $CurrentlyBorrowedCopyWith<$Res> {
  _$CurrentlyBorrowedCopyWithImpl(this._value, this._then);

  final CurrentlyBorrowed _value;
  // ignore: unused_field
  final $Res Function(CurrentlyBorrowed) _then;

  @override
  $Res call({
    Object? currentlyBorrowedBook = freezed,
    Object? book = freezed,
  }) {
    return _then(_value.copyWith(
      currentlyBorrowedBook: currentlyBorrowedBook == freezed
          ? _value.currentlyBorrowedBook
          : currentlyBorrowedBook // ignore: cast_nullable_to_non_nullable
              as CurrentlyBorrowedBook?,
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
    ));
  }

  @override
  $CurrentlyBorrowedBookCopyWith<$Res>? get currentlyBorrowedBook {
    if (_value.currentlyBorrowedBook == null) {
      return null;
    }

    return $CurrentlyBorrowedBookCopyWith<$Res>(_value.currentlyBorrowedBook!,
        (value) {
      return _then(_value.copyWith(currentlyBorrowedBook: value));
    });
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
abstract class _$CurrentlyBorrowedCopyWith<$Res>
    implements $CurrentlyBorrowedCopyWith<$Res> {
  factory _$CurrentlyBorrowedCopyWith(
          _CurrentlyBorrowed value, $Res Function(_CurrentlyBorrowed) then) =
      __$CurrentlyBorrowedCopyWithImpl<$Res>;
  @override
  $Res call({CurrentlyBorrowedBook? currentlyBorrowedBook, Book? book});

  @override
  $CurrentlyBorrowedBookCopyWith<$Res>? get currentlyBorrowedBook;
  @override
  $BookCopyWith<$Res>? get book;
}

/// @nodoc
class __$CurrentlyBorrowedCopyWithImpl<$Res>
    extends _$CurrentlyBorrowedCopyWithImpl<$Res>
    implements _$CurrentlyBorrowedCopyWith<$Res> {
  __$CurrentlyBorrowedCopyWithImpl(
      _CurrentlyBorrowed _value, $Res Function(_CurrentlyBorrowed) _then)
      : super(_value, (v) => _then(v as _CurrentlyBorrowed));

  @override
  _CurrentlyBorrowed get _value => super._value as _CurrentlyBorrowed;

  @override
  $Res call({
    Object? currentlyBorrowedBook = freezed,
    Object? book = freezed,
  }) {
    return _then(_CurrentlyBorrowed(
      currentlyBorrowedBook: currentlyBorrowedBook == freezed
          ? _value.currentlyBorrowedBook
          : currentlyBorrowedBook // ignore: cast_nullable_to_non_nullable
              as CurrentlyBorrowedBook?,
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
    ));
  }
}

/// @nodoc

class _$_CurrentlyBorrowed implements _CurrentlyBorrowed {
  const _$_CurrentlyBorrowed({this.currentlyBorrowedBook, this.book});

  @override
  final CurrentlyBorrowedBook? currentlyBorrowedBook;
  @override
  final Book? book;

  @override
  String toString() {
    return 'CurrentlyBorrowed(currentlyBorrowedBook: $currentlyBorrowedBook, book: $book)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentlyBorrowed &&
            (identical(other.currentlyBorrowedBook, currentlyBorrowedBook) ||
                const DeepCollectionEquality().equals(
                    other.currentlyBorrowedBook, currentlyBorrowedBook)) &&
            (identical(other.book, book) ||
                const DeepCollectionEquality().equals(other.book, book)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentlyBorrowedBook) ^
      const DeepCollectionEquality().hash(book);

  @JsonKey(ignore: true)
  @override
  _$CurrentlyBorrowedCopyWith<_CurrentlyBorrowed> get copyWith =>
      __$CurrentlyBorrowedCopyWithImpl<_CurrentlyBorrowed>(this, _$identity);
}

abstract class _CurrentlyBorrowed implements CurrentlyBorrowed {
  const factory _CurrentlyBorrowed(
      {CurrentlyBorrowedBook? currentlyBorrowedBook,
      Book? book}) = _$_CurrentlyBorrowed;

  @override
  CurrentlyBorrowedBook? get currentlyBorrowedBook =>
      throw _privateConstructorUsedError;
  @override
  Book? get book => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrentlyBorrowedCopyWith<_CurrentlyBorrowed> get copyWith =>
      throw _privateConstructorUsedError;
}
