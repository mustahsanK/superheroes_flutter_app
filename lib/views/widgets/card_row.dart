import 'package:flutter/material.dart';

import 'package:superheroes_app/views/widgets/info_card.dart';

class CardRow extends StatelessWidget {
  final List<String> titles;
  final List<String> values;
  
  const CardRow(this.titles, this.values, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < titles.length; i++)
              InfoCard(titles[i], values[i])
          ],
        ),
      ),
    );
  }
}
