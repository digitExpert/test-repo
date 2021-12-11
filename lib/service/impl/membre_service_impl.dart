import 'dart:convert';

import 'package:collectivity_demo/model/membre.dart';
import 'package:collectivity_demo/service/membre_servcice.dart';
import 'package:collectivity_demo/utils.dart/server_adresses.dart';

import 'package:http/http.dart' as http;

class MemberServiceImpl implements MemberService {
  final http.Client httpClient;

  MemberServiceImpl({required this.httpClient});

  @override
  Future<http.Response> addMembre(Membre membre) async {
    final http.Response response = await httpClient.post(
        Uri.parse(ServerAdresses.base_url + 'new-member/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(membre));

    return response;
  }
}
