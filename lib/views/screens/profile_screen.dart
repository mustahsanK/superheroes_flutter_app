import 'package:flutter/material.dart';
import 'package:superheroes_app/models/superhero.dart';
import '../widgets/card_row.dart';
import '../widgets/profile.dart';
import 'details_screen.dart';

class ProfileScreen extends StatelessWidget {
  final Superhero hero;

  const ProfileScreen(this.hero, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Profile(hero.name, hero.image),
            CardRow(
              const ['Intelligence', 'Strength', 'Speed', 'Durability', 'Power', 'Combat'],
              [hero.stats.intelligence, hero.stats.strength, hero.stats.speed, hero.stats.durability, hero.stats.power, hero.stats.combat]
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(hero)),
                );
              },
              child: const Text('MORE'),
            ),
          ],
        ),
      ),
    );
  }
}
