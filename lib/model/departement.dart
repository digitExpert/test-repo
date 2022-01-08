import 'package:collectivity_demo/model/region.dart';
import 'package:equatable/equatable.dart';

import 'package:json_annotation/json_annotation.dart';

part 'departement.g.dart';

@JsonSerializable()
class Departement extends Equatable {
  final int id;
  final String libelle;
  final Region region;

  Departement(this.id, this.libelle, this.region);
/* 
  factory Departement.fromJson(Map<String, dynamic> json) {
    return Departement(json['id'], json['libelle'],
        Region.fromJson(json['region'] as Map<String, dynamic>));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'region': region.toJson(),
    };
  }
 */

  /// factory.
  factory Departement.fromJson(Map<String, dynamic> json) =>
      _$DepartementFromJson(json);

  /// Connect the generated [_$DistrictToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DepartementToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, libelle];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
}
