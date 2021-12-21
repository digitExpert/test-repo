import 'package:collectivity_demo/model/commune.dart';
import 'package:collectivity_demo/model/departement.dart';
import 'package:collectivity_demo/model/region.dart';

abstract class AdresseService {
  Future<List<Region>> findAllRegions();
  Future<List<Departement>> findAllDepartementByRegion(int id);
  Future<List<Commune>> findAllCommuneByDepartement(int id);
}
