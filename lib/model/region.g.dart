// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      id: json['id'] as int?,
      libelle: json['libelle'] as String?,
      departements: (json['departements'] as List<dynamic>?)
          ?.map((e) => Departement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'departements': instance.departements,
    };
