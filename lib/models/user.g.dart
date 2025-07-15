// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['user_id'] as String,
      email: json['email'] as String,
      userName: json['username'] as String,
      fullName: json['full_name'] as String,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'user_id': instance.id,
      'email': instance.email,
      'username': instance.userName,
      'full_name': instance.fullName,
    };
