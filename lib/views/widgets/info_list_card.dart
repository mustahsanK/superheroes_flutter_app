import 'package:flutter/material.dart';

import 'package:superheroes_app/utils/linewise.dart';

class InfoListCard extends StatelessWidget {
  final String title;
  final String value;

  const InfoListCard(this.title, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(3, 3, 3, 0),
      child: Card(
        child: SizedBox(
          width: 500,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 25)),
                Text(lineWise(value), style: const TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
