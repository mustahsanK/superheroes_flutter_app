import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:superheroes_app/database/superheroes_database.dart';
import 'package:superheroes_app/superheroes_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  await SuperheroesDatabase().database;

  runApp(const SuperheroesApp());
}