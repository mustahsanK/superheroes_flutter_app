import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  final String path;

  const Profile(this.name, this.path, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(path),
          ),
          Text(name.toUpperCase(), style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}