import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:superheroes_app/models/superhero.dart';
import '../access_token.dart';

Future<List<Superhero>> getSearchList(String term) async {
  Uri url = Uri.parse('https://superheroapi.com/api/$accessToken/search/$term');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return (json.decode(response.body)['results'] as List)
        .map((i) => Superhero.fromJson(i))
        .toList();
  } else {
    return List.empty();
  }
}