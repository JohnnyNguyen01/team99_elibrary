import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart' as fb;

import '../../models/failure/failure.dart';
import '../../models/success/success.dart';
import 'blob_storage_facade.dart';

/// Firebase Storage Service Repository
class FirebaseStorageRepository implements IBlobStorage {
  /// [FirebaseStorageRepository] constructor
  FirebaseStorageRepository({required final fb.FirebaseStorage storage})
      : _storage = storage;

  final fb.FirebaseStorage _storage;

  @override
  Future<Either<SuccessResponse, FailureState>> getDownloadUrl(
      {required String filePath}) async {
    try {
      final downloadUrl = await _storage.ref(filePath).getDownloadURL();
      return Left(
        SuccessResponse<String>(
          message: 'Successfully retrieved',
          payload: downloadUrl,
        ),
      );
    } on fb.FirebaseException catch (e) {
      return Right(
        FailureState(e.message),
      );
    }
  }
}
