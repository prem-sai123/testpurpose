// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ADUser _$$_ADUserFromJson(Map<String, dynamic> json) => _$_ADUser(
      username: json['username'] as String?,
      userid: json['id'] as String? ?? '',
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_ADUserToJson(_$_ADUser instance) => <String, dynamic>{
      'username': instance.username,
      'id': instance.userid,
      'email': instance.email,
      'password': instance.password,
    };
