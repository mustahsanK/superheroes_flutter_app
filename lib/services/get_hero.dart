import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/access_token.dart';

Future<Superhero> getHero(String id) async {
  Uri url = Uri.parse('https://superheroapi.com/api/$accessToken/$id');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return Superhero.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load Superhero');
  }
}