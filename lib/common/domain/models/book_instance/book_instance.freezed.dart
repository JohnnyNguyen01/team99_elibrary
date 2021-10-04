// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'book_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookInstance _$BookInstanceFromJson(Map<String, dynamic> json) {
  return _BookInstance.fromJson(json);
}

/// @nodoc
class _$BookInstanceTearOff {
  const _$BookInstanceTearOff();

  _BookInstance call(
      {bool isAvailable = false,
      String? uid,
      String? borrowerUid,
      String? bookUid}) {
    return _BookInstance(
      isAvailable: isAvailable,
      uid: uid,
      borrowerUid: borrowerUid,
      bookUid: bookUid,
    );
  }

  BookInstance fromJson(Map<String, Object> json) {
    return BookInstance.fromJson(json);
  }
}

/// @nodoc
const $BookInstance = _$BookInstanceTearOff();

/// @nodoc
mixin _$BookInstance {
  bool get isAvailable => throw _privateConstructorUsedError;
  String? get uid => throw _privateConstructorUsedError;
  String? get borrowerUid => throw _privateConstructorUsedError;
  String? get bookUid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookInstanceCopyWith<BookInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookInstanceCopyWith<$Res> {
  factory $BookInstanceCopyWith(
          BookInstance value, $Res Function(BookInstance) then) =
      _$BookInstanceCopyWithImpl<$Res>;
  $Res call(
      {bool isAvailable, String? uid, String? borrowerUid, String? bookUid});
}

/// @nodoc
class _$BookInstanceCopyWithImpl<$Res> implements $BookInstanceCopyWith<$Res> {
  _$BookInstanceCopyWithImpl(this._value, this._then);

  final BookInstance _value;
  // ignore: unused_field
  final $Res Function(BookInstance) _then;

  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? uid = freezed,
    Object? borrowerUid = freezed,
    Object? bookUid = freezed,
  }) {
    return _then(_value.copyWith(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      borrowerUid: borrowerUid == freezed
          ? _value.borrowerUid
          : borrowerUid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUid: bookUid == freezed
          ? _value.bookUid
          : bookUid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BookInstanceCopyWith<$Res>
    implements $BookInstanceCopyWith<$Res> {
  factory _$BookInstanceCopyWith(
          _BookInstance value, $Res Function(_BookInstance) then) =
      __$BookInstanceCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isAvailable, String? uid, String? borrowerUid, String? bookUid});
}

/// @nodoc
class __$BookInstanceCopyWithImpl<$Res> extends _$BookInstanceCopyWithImpl<$Res>
    implements _$BookInstanceCopyWith<$Res> {
  __$BookInstanceCopyWithImpl(
      _BookInstance _value, $Res Function(_BookInstance) _then)
      : super(_value, (v) => _then(v as _BookInstance));

  @override
  _BookInstance get _value => super._value as _BookInstance;

  @override
  $Res call({
    Object? isAvailable = freezed,
    Object? uid = freezed,
    Object? borrowerUid = freezed,
    Object? bookUid = freezed,
  }) {
    return _then(_BookInstance(
      isAvailable: isAvailable == freezed
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      borrowerUid: borrowerUid == freezed
          ? _value.borrowerUid
          : borrowerUid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookUid: bookUid == freezed
          ? _value.bookUid
          : bookUid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookInstance extends _BookInstance {
  const _$_BookInstance(
      {this.isAvailable = false, this.uid, this.borrowerUid, this.bookUid})
      : super._();

  factory _$_BookInstance.fromJson(Map<String, dynamic> json) =>
      _$_$_BookInstanceFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool isAvailable;
  @override
  final String? uid;
  @override
  final String? borrowerUid;
  @override
  final String? bookUid;

  @override
  String toString() {
    return 'BookInstance(isAvailable: $isAvailable, uid: $uid, borrowerUid: $borrowerUid, bookUid: $bookUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookInstance &&
            (identical(other.isAvailable, isAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isAvailable, isAvailable)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.borrowerUid, borrowerUid) ||
                const DeepCollectionEquality()
                    .equals(other.borrowerUid, borrowerUid)) &&
            (identical(other.bookUid, bookUid) ||
                const DeepCollectionEquality().equals(other.bookUid, bookUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isAvailable) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(borrowerUid) ^
      const DeepCollectionEquality().hash(bookUid);

  @JsonKey(ignore: true)
  @override
  _$BookInstanceCopyWith<_BookInstance> get copyWith =>
      __$BookInstanceCopyWithImpl<_BookInstance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BookInstanceToJson(this);
  }
}

abstract class _BookInstance extends BookInstance {
  const factory _BookInstance(
      {bool isAvailable,
      String? uid,
      String? borrowerUid,
      String? bookUid}) = _$_BookInstance;
  const _BookInstance._() : super._();

  factory _BookInstance.fromJson(Map<String, dynamic> json) =
      _$_BookInstance.fromJson;

  @override
  bool get isAvailable => throw _privateConstructorUsedError;
  @override
  String? get uid => throw _privateConstructorUsedError;
  @override
  String? get borrowerUid => throw _privateConstructorUsedError;
  @override
  String? get bookUid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookInstanceCopyWith<_BookInstance> get copyWith =>
      throw _privateConstructorUsedError;
}
