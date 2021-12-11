import 'package:collectivity_demo/model/district.dart';
import 'package:equatable/equatable.dart';

class Membre extends Equatable {
  final int? id;
  final String nom;
  final String prenom;
  final String genre;
  final String password;
  final String? email;
  final String telephone;
  final String telephonereferant;
  final String numCarteElecteur;
  final String numCarteIdentite;

  District quartier;

  Membre(
      {this.id,
      required this.nom,
      required this.prenom,
      required this.password,
      this.email,
      required this.genre,
      required this.telephone,
      required this.telephonereferant,
      required this.numCarteElecteur,
      required this.numCarteIdentite,
      required this.quartier});

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

  @override
  // TODO: implement props
  List<Object> get props => [
        nom,
        prenom,
        password,
        telephone,
        genre,
        telephonereferant,
        numCarteElecteur,
        numCarteIdentite,
        quartier
      ];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
