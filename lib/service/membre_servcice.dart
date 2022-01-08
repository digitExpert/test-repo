import 'package:collectivity_demo/model/membre.dart';

abstract class MemberService {
  Future<Membre> addMembre(Membre membre);
}
