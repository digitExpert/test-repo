// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      name: json['name'] as String,
      acounts: [],
      createDateTime: json['createDateTime'] as String,
      updateDateTime: json['updateDateTime'] as String,
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'name': instance.name,
      'acounts': instance.acounts,
      'createDateTime': instance.createDateTime,
      'updateDateTime': instance.updateDateTime,
    };
