import 'package:collectivity_demo/model/membre.dart';
import 'package:http/http.dart';

abstract class MemberService {
  Future<Response> addMembre(Membre membre);
}
