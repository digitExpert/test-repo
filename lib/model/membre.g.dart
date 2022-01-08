// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Membre _$MembreFromJson(Map<String, dynamic> json) => Membre(
      id: json['id'] as int?,
      nom: json['nom'] as String,
      prenom: json['prenom'] as String,
      password: json['password'] as String,
      email: json['email'] as String?,
      genre: json['genre'] as String,
      telephone: json['telephone'] as String,
      telephoneReferant: json['telephoneReferant'] as String,
      numCarteElecteur: json['numCarteElecteur'] as String,
      numCarteIdentite: json['numCarteIdentite'] as String,
      quartier: Commune.fromJson(json['quartier'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MembreToJson(Membre instance) => <String, dynamic>{
      'id': instance.id,
      'nom': instance.nom,
      'prenom': instance.prenom,
      'genre': instance.genre,
      'password': instance.password,
      'email': instance.email,
      'telephone': instance.telephone,
      'telephoneReferant': instance.telephoneReferant,
      'numCarteElecteur': instance.numCarteElecteur,
      'numCarteIdentite': instance.numCarteIdentite,
      'quartier': instance.quartier,
    };
