import 'dart:convert';

import 'package:collectivity_demo/model/commune.dart';
import 'package:collectivity_demo/model/departement.dart';
import 'package:collectivity_demo/model/region.dart';
import 'package:collectivity_demo/service/adresse_service.dart';
import 'package:collectivity_demo/utils.dart/server_adresses.dart';
import 'package:http/http.dart';

class AdresseServiceImpl extends AdresseService {
  final Client httpClient;

  AdresseServiceImpl(this.httpClient);

  @override
  Future<List<Region>> findAllRegions() async {
    print('loading regions...');
    List<String> selectRegions = [];

    final Response response = await httpClient.get(
        Uri.parse(ServerAdresses.adresse_service + 'api/adresse/regions/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      print('success !');
      List<Region> regions = [];

      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));

      for (var i = 0; i < responseJson.length; i++) {
        regions.add(Region.fromJson(responseJson[i]));
      }
      print('retrieved regions : $regions');

      regions.forEach((e) => selectRegions.add(e.libelle!));

      return regions;
    } else {
      print(
          'erreur lors de la recupération des regions. ${response.statusCode}');
      throw Exception();
    }
  }

  @override
  Future<List<Departement>> findAllDepartementByRegion(int id) async {
    print('loading departs...');
    List<String> selectDepts = [];

    final Response response = await httpClient.get(
        Uri.parse(ServerAdresses.adresse_service +
            'api/adresse/departements/region/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      print('success !');
      List<Departement> depts = [];

      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));

      for (var i = 0; i < responseJson.length; i++) {
        depts.add(Departement.fromJson(responseJson[i]));
      }
      print('retrieved depts : $depts');

      depts.forEach((e) => selectDepts.add(e.libelle));

      return depts;
    } else {
      print('erreur lors de la recupération des deps. ${response.statusCode}');
      throw Exception();
    }
  }

  @override
  Future<List<Commune>> findAllCommuneByDepartement(int id) async {
    print('loading departs...');
    List<String> selectDepts = [];

    final Response response = await httpClient.get(
        Uri.parse(ServerAdresses.adresse_service +
            'api/adresse/departements/region/$id'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      print('success !');
      List<Commune> communes = [];

      final responseJson = jsonDecode(utf8.decode(response.bodyBytes));

      for (var i = 0; i < responseJson.length; i++) {
        communes.add(Commune.fromJson(responseJson[i]));
      }
      print('retrieved communes : $communes');

      communes.forEach((e) => selectDepts.add(e.libelle));

      return communes;
    } else {
      print(
          'erreur lors de la recupération des communes. ${response.statusCode}');
      throw Exception();
    }
  }
}
