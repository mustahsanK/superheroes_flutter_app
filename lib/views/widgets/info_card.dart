import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String type;
  final String value;

  const InfoCard(this.type, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 150,
          minHeight: 100,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(type, style: const TextStyle(fontSize: 20)),
              Text(value, style: const TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
