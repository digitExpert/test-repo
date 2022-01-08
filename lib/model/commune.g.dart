// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commune.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Commune _$CommuneFromJson(Map<String, dynamic> json) => Commune(
      id: json['id'] as int?,
      libelle: json['libelle'] as String?,
      district: json['district'] == null
          ? null
          : District.fromJson(json['district'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommuneToJson(Commune instance) => <String, dynamic>{
      'id': instance.id,
      'libelle': instance.libelle,
      'district': instance.district,
    };
