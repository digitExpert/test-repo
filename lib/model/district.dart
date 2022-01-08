import 'package:collectivity_demo/model/departement.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district.g.dart';

@JsonSerializable()
class District extends Equatable {
  final int? id;
  final String? libelle;
  final Departement? departement;

  District({this.id, this.libelle, this.departement});

  /// factory.
  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);

  /// Connect the generated [_$DistrictToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DistrictToJson(this);

/* 
  factory District.fromJson(Map<String, dynamic> json) {
    return District(
        id: json['id'],
        libelle: json['libelle'],
        departement:
            Departement.fromJson(json['departement'] as Map<String, dynamic>));
  }



  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'departement': departement,
    };
  }
 */

  @override
  // TODO: implement props
  List<Object?> get props => [id, libelle, departement];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
