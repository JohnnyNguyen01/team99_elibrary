import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// [User] Model
@freezed
class User with _$User {
  /// Constructs an instance of a [User]
  const factory User({
    @Default('') String uid,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default(false) bool isAdmin,
    @Default('') String imageUrl,
  }) = _User;

  const User._();

  /// Constructs a [User] from [json]
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Helper method to return an empty [User] object
  factory User.empty() => const User(
        uid: '',
        firstName: '',
        lastName: '',
        email: '',
        imageUrl: '',
        isAdmin: false,
      );
}
