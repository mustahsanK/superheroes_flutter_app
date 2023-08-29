import 'package:flutter/material.dart';

import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/views/widgets/about.dart';
import 'package:superheroes_app/views/widgets/card_row.dart';
import 'package:superheroes_app/views/widgets/favourite_button.dart';
import 'package:superheroes_app/views/widgets/info_list_card.dart';
import 'package:superheroes_app/views/widgets/powerstat_bars.dart';

import '../widgets/top.dart';

class DetailsScreen extends StatelessWidget {
  final Superhero hero;

  const DetailsScreen(this.hero, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [FavoriteButton(30, hero)]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Top(hero.name, hero.bio.fullName, hero.bio.publisher),
            About(hero.bio, hero.work),
            CardRow(
              const ['Gender', 'Race', 'Height', 'Weight', 'Eye Color', 'Hair Color'],
              [hero.appearance.gender, hero.appearance.race, hero.appearance.height, hero.appearance.weight, hero.appearance.eye, hero.appearance.hair]
            ),
            PowerStatBars(hero.stats),
            InfoListCard('Groups:', hero.connections.groups),
            InfoListCard('Relatives:', hero.connections.relatives),
          ],
        ),
      )
    );
  }
}
