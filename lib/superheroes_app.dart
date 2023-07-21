import 'package:flutter/material.dart';
import 'package:superheroes_app/superheroes_theme.dart';
import 'package:superheroes_app/views/screens/profile_screen.dart';

class SuperheroesApp extends StatelessWidget {
  const SuperheroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProfileScreen('70'),
      theme: appTheme,
    );
  }
}
