import 'package:flutter/material.dart';
import 'package:superheroes_app/views/screens/profile_screen.dart';

import 'models/powerstats.dart';

class SuperheroesApp extends StatelessWidget {
  const SuperheroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(
        PowerStats(
          '100',
          '26',
          '27',
          '50',
          '47',
          '100'
        )
      ),
    );
  }
}
