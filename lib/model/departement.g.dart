// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'departement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Departement _$DepartementFromJson(Map<String, dynamic> json) => Departement(
      json['id'] as int,
      json['libelle'] as String,
      Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DepartementToJson(Departement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'region': instance.region,
    };
