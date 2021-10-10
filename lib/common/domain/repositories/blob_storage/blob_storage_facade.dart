import 'package:dartz/dartz.dart';

import '../../models/failure/failure.dart';
import '../../models/success/success.dart';

/// Blobl Storage Repository Interface
abstract class IBlobStorage {
  /// Retrieve the Download-URL for the specified file
  Future<Either<SuccessResponse, FailureState>> getDownloadUrl(
      {required final String filePath});

  /// Uplaod a new file to the storage bucket
  Future<Either<void, FailureState>> uploadNewFile({
    required final dynamic file,
    required final String uploadPath,
  });
}
