// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

District _$DistrictFromJson(Map<String, dynamic> json) => District(
      id: json['id'] as int?,
      libelle: json['libelle'] as String?,
      departement: json['departement'] == null
          ? null
          : Departement.fromJson(json['departement'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'departement': instance.departement,
    };
