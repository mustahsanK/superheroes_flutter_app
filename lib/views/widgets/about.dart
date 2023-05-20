import 'package:flutter/material.dart';
import 'package:superheroes_app/models/biography.dart';
import 'package:superheroes_app/models/work.dart';

class About extends StatelessWidget {
  final Biography bio;
  final Work work;

  const About(this.bio, this.work, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildField('First Appearance:', bio.first),
            _buildField('Alter Egos:', bio.alterEgo),
            _buildField('Alias:', bio.aliases.toString()),
            _buildField('Birth:', bio.placeOfBirth),
            _buildField('Base:', work.base),
            _buildField('Occupation:', work.occupation),
          ],
        ),
      ),
    );
  }

  Widget _buildField(String type, String value) {
    return Row(
      children: [
        Text(type, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(width: 100),
        Text(value, style: const TextStyle(fontSize: 18)),
      ],
    );
  }
}