import 'package:equatable/equatable.dart';

class AccessToken extends Equatable {
  final String accessToken;
  final String tokenType;
  final String refreshToken;
  final num expiresIn;
  final String scope;

  AccessToken(
      {required this.accessToken,
      required this.tokenType,
      required this.refreshToken,
      required this.expiresIn,
      required this.scope});

  factory AccessToken.fromJson(Map<String, dynamic> json) {
    return AccessToken(
        accessToken: json['access_token'],
        tokenType: json['token_type'],
        refreshToken: json['refresh_token'],
        expiresIn: json['expires_in'],
        scope: json['scope']);
  }

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "refresh_token": refreshToken,
        "expires_in": expiresIn,
        "scope": scope,
      };

  @override
  // TODO: implement props
  List<Object> get props =>
      [accessToken, tokenType, refreshToken, expiresIn, scope];

  @override
  // TODO: implement stringify
  bool get stringify => true;
}
