import 'package:collectivity_demo/model/role.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable()
class Account extends Equatable {
  final int id;
  final String username;
  final String password;
  final String photo;
  final bool enabled = true;
  final List<Role> roles;
  final String createDateTime;
  final String updateDateTime;

  Account(
      {required this.id,
      required this.username,
      required this.password,
      required this.photo,
      required this.roles,
      required this.createDateTime,
      required this.updateDateTime});

  /// factory.
  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  /// Connect the generated [_$AccountToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @override
  // TODO: implement props
  List<Object> get props => [id, username, password, enabled, createDateTime];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
