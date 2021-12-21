import 'package:collectivity_demo/model/commune.dart';

class Departement {
  final int id;
  final String libelle;

  Departement(this.id, this.libelle);

  factory Departement.fromJson(Map<String, dynamic> json) {
    return Departement(json['id'], json['libelle']);
  }
}
