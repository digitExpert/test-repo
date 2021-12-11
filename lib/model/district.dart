import 'package:equatable/equatable.dart';

class District extends Equatable {
  final int? id;
  final String libelle;

  District({this.id, required this.libelle});

  factory District.fromJson(Map<String, dynamic> json) {
    return District(id: json['id'], libelle: json['libelle']);
  }

  @override
  // TODO: implement props
  List<Object> get props => [libelle];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
