import 'package:collectivity_demo/model/departement.dart';
import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'region.g.dart';

@JsonSerializable()
class Region extends Equatable {
  final int? id;
  final String? libelle;
  final List<Departement>? departements;

  Region({this.id, this.libelle, this.departements});
/* 
  factory Region.fromJson(Map<String, dynamic> json) {
    return Region(
        id: json['id'],
        libelle: json['libelle'],
        departements: json['departements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'departements': null,
    };
  }
 */

  /// factory.
  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);

  /// Connect the generated [_$DistrictToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RegionToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, libelle, departements];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
}
