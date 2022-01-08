import 'package:collectivity_demo/model/district.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'commune.g.dart';

@JsonSerializable()
class Commune extends Equatable {
  final int? id;
  final String? libelle;
  final District? district;

  Commune({this.id, this.libelle, this.district});
/* 
  factory Commune.fromJson(Map<String, dynamic> json) {
    return Commune(
        id: json['id'],
        libelle: json['libelle'],
        district: District.fromJson(json['district'] as Map<String, dynamic>));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'libelle': libelle,
      'district': district!.toJson(),
    };
  }

 */

  /// factory.
  factory Commune.fromJson(Map<String, dynamic> json) =>
      _$CommuneFromJson(json);

  /// Connect the generated [_$DistrictToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CommuneToJson(this);
  @override
  // TODO: implement props
  List<Object?> get props => [id, libelle, district];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
}
