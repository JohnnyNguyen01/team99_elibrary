// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'books_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BooksViewModelTearOff {
  const _$BooksViewModelTearOff();

  _BooksViewModel call({List<Book> books = const <Book>[]}) {
    return _BooksViewModel(
      books: books,
    );
  }
}

/// @nodoc
const $BooksViewModel = _$BooksViewModelTearOff();

/// @nodoc
mixin _$BooksViewModel {
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksViewModelCopyWith<BooksViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksViewModelCopyWith<$Res> {
  factory $BooksViewModelCopyWith(
          BooksViewModel value, $Res Function(BooksViewModel) then) =
      _$BooksViewModelCopyWithImpl<$Res>;
  $Res call({List<Book> books});
}

/// @nodoc
class _$BooksViewModelCopyWithImpl<$Res>
    implements $BooksViewModelCopyWith<$Res> {
  _$BooksViewModelCopyWithImpl(this._value, this._then);

  final BooksViewModel _value;
  // ignore: unused_field
  final $Res Function(BooksViewModel) _then;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$BooksViewModelCopyWith<$Res>
    implements $BooksViewModelCopyWith<$Res> {
  factory _$BooksViewModelCopyWith(
          _BooksViewModel value, $Res Function(_BooksViewModel) then) =
      __$BooksViewModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Book> books});
}

/// @nodoc
class __$BooksViewModelCopyWithImpl<$Res>
    extends _$BooksViewModelCopyWithImpl<$Res>
    implements _$BooksViewModelCopyWith<$Res> {
  __$BooksViewModelCopyWithImpl(
      _BooksViewModel _value, $Res Function(_BooksViewModel) _then)
      : super(_value, (v) => _then(v as _BooksViewModel));

  @override
  _BooksViewModel get _value => super._value as _BooksViewModel;

  @override
  $Res call({
    Object? books = freezed,
  }) {
    return _then(_BooksViewModel(
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_BooksViewModel implements _BooksViewModel {
  const _$_BooksViewModel({this.books = const <Book>[]});

  @JsonKey(defaultValue: const <Book>[])
  @override
  final List<Book> books;

  @override
  String toString() {
    return 'BooksViewModel(books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BooksViewModel &&
            (identical(other.books, books) ||
                const DeepCollectionEquality().equals(other.books, books)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(books);

  @JsonKey(ignore: true)
  @override
  _$BooksViewModelCopyWith<_BooksViewModel> get copyWith =>
      __$BooksViewModelCopyWithImpl<_BooksViewModel>(this, _$identity);
}

abstract class _BooksViewModel implements BooksViewModel {
  const factory _BooksViewModel({List<Book> books}) = _$_BooksViewModel;

  @override
  List<Book> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BooksViewModelCopyWith<_BooksViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
