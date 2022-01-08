import 'package:collectivity_demo/model/commune.dart';
import 'package:collectivity_demo/model/departement.dart';
import 'package:collectivity_demo/model/district.dart';
import 'package:collectivity_demo/model/region.dart';

abstract class AdresseService {
  Future<List<Region>> findAllRegions();
  Future<List<Departement>> findAllDepartementByRegion(int id);
  Future<List<Commune>> findAllCommuneByDepartement(int id);

  Future<List<District>> findAllByRegion(
      {int? id,
      required String term}); // On ne considére que Dakar dans cette fonction

  Future<List<Commune>> findAllCommunesByRegion(
      {int? id,
      required String term}); // On ne considére que Dakar dans cette fonction
}
