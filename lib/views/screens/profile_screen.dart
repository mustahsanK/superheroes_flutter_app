import 'package:flutter/material.dart';
import 'package:superheroes_app/models/powerstats.dart';
import 'package:superheroes_app/views/widgets/info_card.dart';

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
          InfoCard('Intelligence 🧠', stats.intelligence),
          InfoCard('Strength 💪', stats.strength),
          InfoCard('Speed 🚄', stats.speed),
          InfoCard('Durability 🛡️', stats.durability),
          InfoCard('Power 🔥', stats.power),
          InfoCard('Combat ⚔️', stats.combat),
        ],
      ),
    );
  }
}
