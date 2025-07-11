import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String? id,
    required String? email,
    required String? username,
    @JsonKey(name: 'full_name') required String? fullName,
    // @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
