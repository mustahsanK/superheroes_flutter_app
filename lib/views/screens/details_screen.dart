import 'package:flutter/material.dart';
import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/views/widgets/about.dart';
import 'package:superheroes_app/views/widgets/info_list_card.dart';
import 'package:superheroes_app/views/widgets/powerstat_bars.dart';
import 'package:superheroes_app/views/widgets/top.dart';

import '../widgets/info_card.dart';

class DetailsScreen extends StatelessWidget {
  final Superhero hero;

  const DetailsScreen(this.hero, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Top(hero.name, hero.bio.fullName, hero.bio.publisher),
          About(hero.bio, hero.work),
          _buildAppearanceList(),
          PowerStatBars(hero.stats),
          InfoListCard('Groups:', hero.connections.groups),
          InfoListCard('Relatives:', hero.connections.relatives),
        ],
      )
    );
  }

  Widget _buildAppearanceList() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InfoCard('Gender', 'Male'),
          InfoCard('Race', 'Human'),
          InfoCard('Height', '188 cm'),
          InfoCard('Weight', '95 Kg'),
          InfoCard('Eye Color', 'Blue'),
          InfoCard('Hair Color', 'Black'),
        ],
      ),
    );
  }
}
