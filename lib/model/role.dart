import 'package:collectivity_demo/model/account.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'role.g.dart';

@JsonSerializable()
class Role extends Equatable {
  final String name;

  @JsonKey(ignore: true)
  final List<Account> acounts;
  final String createDateTime;
  final String updateDateTime;

  Role(
      {required this.name,
      required this.acounts,
      required this.createDateTime,
      required this.updateDateTime});

  /// factory.
  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  /// Connect the generated [_$AccountToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RoleToJson(this);

  @override
  // TODO: implement props
  List<Object> get props => [name, acounts];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
