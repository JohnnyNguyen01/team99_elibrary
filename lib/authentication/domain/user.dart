import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// [User] Model
@freezed
class User with _$User {
  /// Constructs an instance of a [User]
  const factory User({
    required String? uid,
    required String? firstName,
    required String? lastName,
    required String? email,
    required bool? isAdmin,
    required String? imageUrl,
  }) = _User;

  const User._();

  /// Constructs a [User] from [json]
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
