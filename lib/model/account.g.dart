// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: json['id'] as int,
      username: json['username'] as String,
      password: json['password'] as String,
      photo: json['photo'] as String,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
      createDateTime: json['createDateTime'] as String,
      updateDateTime: json['updateDateTime'] as String,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'photo': instance.photo,
      'roles': instance.roles,
      'createDateTime': instance.createDateTime,
      'updateDateTime': instance.updateDateTime,
    };
