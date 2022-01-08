import 'dart:convert';

import 'package:collectivity_demo/model/access_token.dart';
import 'package:collectivity_demo/service/account_service.dart';
import 'package:collectivity_demo/utils.dart/server_adresses.dart';
import 'package:collectivity_demo/utils/constantes.dart';
import 'package:http/http.dart';

class AccountServiceImpl extends AccountService {
  final Client _httpClient;

  AccountServiceImpl(this._httpClient);

/*   @override
  Future<Account> save(Account a) async {
    AccessToken token = await StorageService.getToken();

    print('saving account : $a ; access token : $token');

    // Unable account on creation

    final resp = await _httpClient.post(
        Uri.parse(ServerAdresses.authServer_adr + 'api/account/?enabled=true'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer ' + token.accessToken
        },
        body: jsonEncode(a));

    print('successfully saved and enabled account.${resp.statusCode}');

    if (resp.statusCode == 201) {
      final responseJson = jsonDecode(resp.body);

      Account account = Account.fromJson(responseJson);

      print('successfully saved account  : $account');

      //   StorageService.setToken(token);

      return account;
    } else
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Impossible d\'ajouter ce compte');
  }
 */
  @override
  Future<AccessToken> login(String username, String password) async {
    print('...login  :[$username,$password] ');

    // AccessToken token = await StorageService.getToken();

    final resp = await _httpClient
        .post(Uri.parse(ServerAdresses.authServer_adr + 'oauth/token'), body: {
      'username': username,
      'password': password,
      'grant_type': 'password'
    }, headers: {
      'authorization': AppConstantes.basicAuth
    });

    if (resp.statusCode == 200) {
      print('successfully logged in account.${resp.statusCode}');
      final responseJson = jsonDecode(resp.body);

      AccessToken token = AccessToken.fromJson(responseJson);

      print('successfully retrieved a token : $token');

      //   StorageService.setToken(token);

      return token;
    } else {
      print('error while logging ${resp.statusCode}');
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Impossible d\'ajouter ce compte');
    }
  }
}
