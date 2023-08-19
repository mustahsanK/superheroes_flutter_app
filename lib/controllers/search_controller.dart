import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:superheroes_app/models/superhero.dart';
import '../access_token.dart';

class SuperheroSearchController extends GetxController {
  List<Superhero> results = List<Superhero>.empty(growable: true).obs;
  String term = '';

  getSearch(String key) async {
    Uri url = Uri.parse('https://superheroapi.com/api/$accessToken/search/$key');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      results.addAll(
          (json.decode(response.body)['results'] as List)
            .map((i) => Superhero.fromJson(i))
            .toList()
      );
    } else {
      throw Exception('Failed to load Superhero List');
    }
  }

  updateResult(String newTerm) {
    term = newTerm;
    results.clear();
    getSearch(term);
    update();
  }
}