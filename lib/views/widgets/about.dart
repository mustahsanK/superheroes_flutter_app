import 'package:flutter/material.dart';
import 'package:superheroes_app/models/biography.dart';
import 'package:superheroes_app/models/work.dart';

class About extends StatelessWidget {
  final Biography bio;
  final Work work;

  const About(this.bio, this.work, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildField(
          ['First Appearance:', 'Alter Egos:', 'Alias:', 'Birth:', 'Base:', 'Occupation:'],
          20,
          FontWeight.bold,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: _buildField(
            [bio.first, bio.alterEgo, bio.aliases.toString(), bio.placeOfBirth, work.base, work.occupation],
            20,
            FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Widget _buildField(List<String> list, double sz, FontWeight wt) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var l in list)
            Text(l, style: TextStyle(fontSize: sz, fontWeight: wt))
        ],
      ),
    );
  }
}