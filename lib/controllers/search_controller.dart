import 'package:get/get.dart';

import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/services/get_search.dart';

class SuperheroSearchController extends GetxController {
  List<Superhero> results = List<Superhero>.empty(growable: true).obs;
  String term = '';

  getSearch(String t) async {
    results.addAll(await getSearchList(t));
  }

  updateResult(String newTerm) {
    term = newTerm;
    results.clear();
    getSearch(term);
    update();
  }
}