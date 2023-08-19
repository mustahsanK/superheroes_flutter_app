import 'package:flutter/material.dart';

import 'package:superheroes_app/models/biography.dart';
import 'package:superheroes_app/models/work.dart';

class About extends StatelessWidget {
  final Biography bio;
  final Work work;

  const About(this.bio, this.work, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          _buildField('First Appearance: ', bio.first),
          _buildField('Alter Ego: ', bio.alterEgo),
          _buildField('Alias: ', bio.aliases.toString()),
          _buildField('Birth: ', bio.placeOfBirth),
          _buildField('Base: ', work.base),
          _buildField('Occupation: ', work.occupation),
        ],
      ),
    );
  }

  Widget _buildField(String h, String v) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Text(h, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
          SizedBox(
            width: 180,
            child: Text(v, style: const TextStyle(fontSize: 16), maxLines: 15),
          )
        ],
      ),
    );
  }
}