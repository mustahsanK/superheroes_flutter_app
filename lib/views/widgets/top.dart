import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  final String name;
  final String fullName;
  final String publisher;

  const Top(this.name, this.fullName, this.publisher, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Text(name, style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          Text(fullName, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Text(publisher.toUpperCase(), style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
