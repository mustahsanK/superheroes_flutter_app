import 'package:flutter/material.dart';

class InfoListCard extends StatelessWidget {
  final String title;
  final String value;

  const InfoListCard(this.title, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 25)),
            Text(value, style: const TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
