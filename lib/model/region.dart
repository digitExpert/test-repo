import 'package:collectivity_demo/model/departement.dart';
import 'package:equatable/equatable.dart';

class Region extends Equatable {
  final int? id;
  final String? libelle;
  final List<Departement>? departements;

  Region({this.id, this.libelle, this.departements});

  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
        id: json['id'],
        libelle: json['libelle'],
        departements: json['departements']);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, libelle, departements];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
}
