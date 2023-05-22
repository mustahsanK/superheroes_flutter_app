import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  final String name;
  final String fullName;
  final String publisher;

  const Top(this.name, this.fullName, this.publisher, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(fullName, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Text(publisher.toUpperCase(), style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }
}
