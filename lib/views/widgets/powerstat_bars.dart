import 'package:flutter/material.dart';
import 'package:superheroes_app/models/powerstats.dart';

class PowerStatBars extends StatelessWidget {
  final PowerStats stats;

  const PowerStatBars(this.stats, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          _buildBar('Intelligence', stats.intelligence),
          _buildBar('Strength', stats.strength),
          _buildBar('Speed', stats.speed),
          _buildBar('Durability', stats.durability),
          _buildBar('Power', stats.power),
          _buildBar('Combat', stats.combat),
        ],
      ),
    );
  }

  Widget _buildBar(String type, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(type, style: const TextStyle(fontSize: 18)),
        Row(
          children: [
            Text("$value ", style: const TextStyle(fontSize: 10)),
            SizedBox(
              height: 10,
              width: double.parse(value) * 2,
              child: const ColoredBox(color: Colors.lightBlue),
            ),
          ],
        )
      ],
    );
  }
}
