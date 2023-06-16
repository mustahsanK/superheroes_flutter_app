import 'package:flutter/material.dart';
import 'package:superheroes_app/superheroes_theme.dart';
import 'package:superheroes_app/views/screens/profile_screen.dart';

import 'models/appearence.dart';
import 'models/biography.dart';
import 'models/powerstats.dart';
import 'models/superhero.dart';
import 'models/work.dart';
import 'models/connections.dart';

Superhero batman = Superhero(
    '69',
    'Batman',
    PowerStats('100', '26', '27', '50', '47', '100'),
    Biography(
        'Bruce Wayne',
        'No Alter Ego',
        ['sda', 'asda'],
        'Crest Hill, Bristol Township; Gotham County',
        'Detective Comics #27',
        'dc',
        'good'
    ),
    Appearance(
        'Male',
        'Human',
        '188 cm',
        '95 Kg',
        'blue',
        'black'
    ),
    Work(
      'Batcave, Stately Wayne Manor, Gotham City; Hall of Justice, Justice League Watchtower',
      'Businessman',
    ),
    Connections(
        'Batman Family, Batman Incorporated, Justice League, Outsiders, Wayne Enterprises, Club of Heroes, formerly White Lantern Corps, Sinestro Corps',
        'Damian Wayne (son), Dick Grayson (adopted son), Tim Drake (adopted son), Jason Todd (adopted son), Cassandra Cain (adopted ward)\nMartha Wayne (mother, deceased), Thomas Wayne (father, deceased), Alfred Pennyworth (former guardian), Roderick Kane (grandfather, deceased), Elizabeth Kane (grandmother, deceased), Nathan Kane (uncle, deceased), Simon Hurt (ancestor), Wayne Family'
    ),
    'https://www.superherodb.com/pictures2/portraits/10/100/639.jpg'
);

class SuperheroesApp extends StatelessWidget {
  const SuperheroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(batman),
      theme: appTheme,
    );
  }
}
