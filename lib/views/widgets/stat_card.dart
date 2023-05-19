import 'package:flutter/material.dart';

class StatCard extends StatelessWidget {
  final String type;
  final String value;

  const StatCard(this.type, this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(type, style: const TextStyle(fontSize: 20),),
              Text(value, style: const TextStyle(fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}
