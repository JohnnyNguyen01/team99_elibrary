import 'package:dartz/dartz.dart';

import '../../models/failure/failure.dart';
import '../../models/success/success.dart';

/// Blobl Storage Repository Interface
abstract class IBlobStorage {
  /// Retrieve the Download-URL for the specified file
  Future<Either<SuccessResponse, FailureState>> getDownloadUrl(
      {required String filePath});

  /// Retrieve the Reference object for the requesred file
  // Future<Either<SuccessResponse, FailureState>> getFileRef(
  //     {required String filePath});
}
