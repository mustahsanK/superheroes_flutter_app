import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:superheroes_app/superheroes_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);

  runApp(const SuperheroesApp());
}