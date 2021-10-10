// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'currently_borrowed_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentlyBorrowedBook _$CurrentlyBorrowedBookFromJson(
    Map<String, dynamic> json) {
  return _CurrentlyBorrowedBook.fromJson(json);
}

/// @nodoc
class _$CurrentlyBorrowedBookTearOff {
  const _$CurrentlyBorrowedBookTearOff();

  _CurrentlyBorrowedBook call(
      {String? uid,
      String? bookUid,
      bool? isOverdue,
      @TimestampConverter() DateTime? borrowedAt,
      @TimestampConverter() DateTime? returnBy}) {
    return _CurrentlyBorrowedBook(
      uid: uid,
      bookUid: bookUid,
      isOverdue: isOverdue,
      borrowedAt: borrowedAt,
      returnBy: returnBy,
    );
  }

  CurrentlyBorrowedBook fromJson(Map<String, Object> json) {
    return CurrentlyBorrowedBook.fromJson(json);
  }
}

/// @nodoc
const $CurrentlyBorrowedBook = _$CurrentlyBorrowedBookTearOff();

/// @nodoc
mixin _$CurrentlyBorrowedBook {
  String? get uid => throw _privateConstructorUsedError;
  String? get bookUid => throw _privateConstructorUsedError;
  bool? get isOverdue => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get borrowedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get returnBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentlyBorrowedBookCopyWith<CurrentlyBorrowedBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentlyBorrowedBookCopyWith<$Res> {
  factory $CurrentlyBorrowedBookCopyWith(CurrentlyBorrowedBook value,
          $Res Function(CurrentlyBorrowedBook) then) =
      _$CurrentlyBorrowedBookCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String? bookUid,
      bool? isOverdue,
      @TimestampConverter() DateTime? borrowedAt,
      @TimestampConverter() DateTime? returnBy});
}

/// @nodoc
class _$CurrentlyBorrowedBookCopyWithImpl<$Res>
    implements $CurrentlyBorrowedBookCopyWith<$Res> {
  _$CurrentlyBorrowedBookCopyWithImpl(this._value, this._then);

  final CurrentlyBorrowedBook _value;
  // ignore: unused_field
  final $Res Function(CurrentlyBorrowedBook) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? bookUid = freezed,
    Object? isOverdue = freezed,
    Object? borrowedAt = freezed,
    Object? returnBy = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUid: bookUid == freezed
          ? _value.bookUid
          : bookUid // ignore: cast_nullable_to_non_nullable
              as String?,
      isOverdue: isOverdue == freezed
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool?,
      borrowedAt: borrowedAt == freezed
          ? _value.borrowedAt
          : borrowedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnBy: returnBy == freezed
          ? _value.returnBy
          : returnBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$CurrentlyBorrowedBookCopyWith<$Res>
    implements $CurrentlyBorrowedBookCopyWith<$Res> {
  factory _$CurrentlyBorrowedBookCopyWith(_CurrentlyBorrowedBook value,
          $Res Function(_CurrentlyBorrowedBook) then) =
      __$CurrentlyBorrowedBookCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String? bookUid,
      bool? isOverdue,
      @TimestampConverter() DateTime? borrowedAt,
      @TimestampConverter() DateTime? returnBy});
}

/// @nodoc
class __$CurrentlyBorrowedBookCopyWithImpl<$Res>
    extends _$CurrentlyBorrowedBookCopyWithImpl<$Res>
    implements _$CurrentlyBorrowedBookCopyWith<$Res> {
  __$CurrentlyBorrowedBookCopyWithImpl(_CurrentlyBorrowedBook _value,
      $Res Function(_CurrentlyBorrowedBook) _then)
      : super(_value, (v) => _then(v as _CurrentlyBorrowedBook));

  @override
  _CurrentlyBorrowedBook get _value => super._value as _CurrentlyBorrowedBook;

  @override
  $Res call({
    Object? uid = freezed,
    Object? bookUid = freezed,
    Object? isOverdue = freezed,
    Object? borrowedAt = freezed,
    Object? returnBy = freezed,
  }) {
    return _then(_CurrentlyBorrowedBook(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUid: bookUid == freezed
          ? _value.bookUid
          : bookUid // ignore: cast_nullable_to_non_nullable
              as String?,
      isOverdue: isOverdue == freezed
          ? _value.isOverdue
          : isOverdue // ignore: cast_nullable_to_non_nullable
              as bool?,
      borrowedAt: borrowedAt == freezed
          ? _value.borrowedAt
          : borrowedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnBy: returnBy == freezed
          ? _value.returnBy
          : returnBy // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentlyBorrowedBook extends _CurrentlyBorrowedBook {
  const _$_CurrentlyBorrowedBook(
      {this.uid,
      this.bookUid,
      this.isOverdue,
      @TimestampConverter() this.borrowedAt,
      @TimestampConverter() this.returnBy})
      : super._();

  factory _$_CurrentlyBorrowedBook.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrentlyBorrowedBookFromJson(json);

  @override
  final String? uid;
  @override
  final String? bookUid;
  @override
  final bool? isOverdue;
  @override
  @TimestampConverter()
  final DateTime? borrowedAt;
  @override
  @TimestampConverter()
  final DateTime? returnBy;

  @override
  String toString() {
    return 'CurrentlyBorrowedBook(uid: $uid, bookUid: $bookUid, isOverdue: $isOverdue, borrowedAt: $borrowedAt, returnBy: $returnBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentlyBorrowedBook &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.bookUid, bookUid) ||
                const DeepCollectionEquality()
                    .equals(other.bookUid, bookUid)) &&
            (identical(other.isOverdue, isOverdue) ||
                const DeepCollectionEquality()
                    .equals(other.isOverdue, isOverdue)) &&
            (identical(other.borrowedAt, borrowedAt) ||
                const DeepCollectionEquality()
                    .equals(other.borrowedAt, borrowedAt)) &&
            (identical(other.returnBy, returnBy) ||
                const DeepCollectionEquality()
                    .equals(other.returnBy, returnBy)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(bookUid) ^
      const DeepCollectionEquality().hash(isOverdue) ^
      const DeepCollectionEquality().hash(borrowedAt) ^
      const DeepCollectionEquality().hash(returnBy);

  @JsonKey(ignore: true)
  @override
  _$CurrentlyBorrowedBookCopyWith<_CurrentlyBorrowedBook> get copyWith =>
      __$CurrentlyBorrowedBookCopyWithImpl<_CurrentlyBorrowedBook>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrentlyBorrowedBookToJson(this);
  }
}

abstract class _CurrentlyBorrowedBook extends CurrentlyBorrowedBook {
  const factory _CurrentlyBorrowedBook(
      {String? uid,
      String? bookUid,
      bool? isOverdue,
      @TimestampConverter() DateTime? borrowedAt,
      @TimestampConverter() DateTime? returnBy}) = _$_CurrentlyBorrowedBook;
  const _CurrentlyBorrowedBook._() : super._();

  factory _CurrentlyBorrowedBook.fromJson(Map<String, dynamic> json) =
      _$_CurrentlyBorrowedBook.fromJson;

  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get bookUid => throw _privateConstructorUsedError;
  @override
  bool? get isOverdue => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get borrowedAt => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime? get returnBy => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrentlyBorrowedBookCopyWith<_CurrentlyBorrowedBook> get copyWith =>
      throw _privateConstructorUsedError;
}
