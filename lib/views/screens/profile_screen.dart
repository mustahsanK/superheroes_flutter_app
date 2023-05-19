import 'package:flutter/material.dart';
import 'package:superheroes_app/models/powerstats.dart';
import 'package:superheroes_app/views/widgets/stat_card.dart';

import '../widgets/profile.dart';

class ProfileScreen extends StatelessWidget {
  final PowerStats stats;

  const ProfileScreen(this.stats, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Profile(),
            _buildStatList(),
            ElevatedButton(
              onPressed: () {
                print("Hello");
              },
              child: const Text('MORE'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StatCard('intelligence', stats.intelligence),
          StatCard('strength', stats.strength),
          StatCard('speed', stats.speed),
          StatCard('durability', stats.durability),
          StatCard('power', stats.power),
          StatCard('combat', stats.combat),
        ],
      ),
    );
  }
}
