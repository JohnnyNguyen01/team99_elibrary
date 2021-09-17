import 'package:dio/dio.dart';

import '../../models/book/book.dart';
import '../../models/failure/failure.dart';
import '../../models/result.dart';
import 'books_facade.dart';

/// The Books Repository
class BooksRepository implements IBooksRepository {
  /// [BooksRepository] constructor
  const BooksRepository({required Dio dio}) : _dio = dio;

  // TODO: Change after deployment of API [Johnny]
  static const _baseUrl = 'http://localhost:7000';

  final Dio _dio;

  @override
  Future<void> deleteAllBooks() async {
    // final requestOptions = RequestOptions(path: path);
    // _dio.fetch()
  }

  @override
  Future<void> deleteBookByUid({required String uid}) {
    // TODO: implement deleteBookByUid
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Book>, FailureState>> fetchAllBooks() {
    // TODO: implement fetchAllBooks
    throw UnimplementedError();
  }

  @override
  Future<Result<Book, FailureState>> fetchBookByUid(
      {required String uid}) async {
    final requestOptions = RequestOptions(
      path: '$_baseUrl/getBookByUID/$uid',
      contentType: 'application/json',
    );
    try {
      final response = await _dio.fetch<Map<String, dynamic>>(requestOptions);
      if (response.statusCode == 200) {
        final json = response.data;
        return Result.success(Book.fromJson(json!));
      } else {
        return Result.failure(
          FailureState(response.statusMessage),
        );
      }
    } on Exception catch (e) {
      return Future.value(
        Result.failure(
          FailureState(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Future<void> addNewBook({Book? book}) {
    // TODO: implement addNewBook
    throw UnimplementedError();
  }
}
