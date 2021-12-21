import 'package:equatable/equatable.dart';

class Commune extends Equatable {
  final int id;
  final String libelle;

  Commune(this.id, this.libelle);

  factory Commune.fromJson(Map<String, dynamic> json) {
    return Commune(json['id'], json['libelle']);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id, libelle];

  @override
  // TODO: implement stringify
  bool? get stringify => true;
}
