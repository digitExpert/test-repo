import 'package:collectivity_demo/model/access_token.dart';

abstract class AccountService {
  // Future<Account> save(Account a);
  Future<AccessToken> login(String username, String password);
}
