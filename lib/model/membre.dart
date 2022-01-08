import 'package:collectivity_demo/model/commune.dart';
import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'membre.g.dart';

@JsonSerializable()
class Membre extends Equatable {
  final int? id;
  final String nom;
  final String prenom;
  final String genre;
  final String password;
  final String? email;
  final String telephone;
  final String telephoneReferant;
  final String numCarteElecteur;
  final String numCarteIdentite;

  Commune quartier;

  Membre(
      {this.id,
      required this.nom,
      required this.prenom,
      required this.password,
      this.email,
      required this.genre,
      required this.telephone,
      required this.telephoneReferant,
      required this.numCarteElecteur,
      required this.numCarteIdentite,
      required this.quartier});
/* 
  factory Membre.fromJson(Map<String, dynamic> json) {
    return Membre(
        id: json['id'],
        nom: json['nom'],
        prenom: json['prenom'],
        password: json['password'],
        email: json['email'],
        genre: json['genre'],
        telephone: json['telephone'],
        telephonereferant: json['telephonereferant'],
        numCarteElecteur: json['numCarteElecteur'],
        numCarteIdentite: json['numCarteIdentite'],
        quartier: json['quartier']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nom': nom,
      'prenom': prenom,
      'password': password,
      'email': email,
      'genre': genre,
      'telephone': telephone,
      'telephonereferant': telephonereferant,
      'numCarteElecteur': numCarteElecteur,
      'numCarteIdentite': numCarteIdentite,
      'quartier': quartier.toJson()
    };
  }
 */

  /// factory.
  factory Membre.fromJson(Map<String, dynamic> json) => _$MembreFromJson(json);

  /// Connect the generated [_$DistrictToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MembreToJson(this);

  @override
  // TODO: implement props
  List<Object> get props => [
        nom,
        prenom,
        password,
        telephone,
        genre,
        telephoneReferant,
        numCarteElecteur,
        numCarteIdentite,
        quartier
      ];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
