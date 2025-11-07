import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
   @JsonKey(name: 'user_id') required int id,
    required String email,
  @JsonKey(name: 'username')  required String userName,
    @JsonKey(name: 'full_name')  String? fullName,

    // @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}