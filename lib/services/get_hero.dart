import 'package:http/http.dart' as http;
import 'dart:convert';

import '../access_token.dart';
import '../models/superhero.dart';

Future<Superhero> getHero(String id) async {
  Uri url = Uri.parse('https://superheroapi.com/api/$accessToken/$id');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return Superhero.fromJson(json.decode(response.body));
  } else {
    throw Exception('Error');
  }
}