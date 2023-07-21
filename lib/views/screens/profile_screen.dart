import 'package:flutter/material.dart';
import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/services/get_hero.dart';
import '../widgets/card_row.dart';
import '../widgets/profile.dart';
import 'details_screen.dart';

class ProfileScreen extends StatefulWidget {
  final String id;

  const ProfileScreen(this.id, {super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Future<Superhero> futureHero;

  @override
  void initState() {
    super.initState();
    futureHero = getHero(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: futureHero,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildProfileBody(context, snapshot.data!);
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }
          return const Center(child: Text('ERROR!!!'));
        }
      )
    );
  }

  Widget _buildProfileBody(BuildContext context, Superhero hero) {
    return Container(
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
    );
  }
}
