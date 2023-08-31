import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/views/screens/profile_screen.dart';
import 'package:superheroes_app/views/widgets/favourite_button.dart';

class Item extends StatelessWidget {
  final Superhero hero;

  const Item(this.hero, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            child: Image.network(
              hero.image,
              alignment: Alignment.topCenter,
            ),
            onTap: () {
              Get.to(() => ProfileScreen(hero));
            },
          ),
          Text(
            hero.name,
            style: const TextStyle(fontSize: 20),
            maxLines: 3,
          ),
          FavoriteButton(30, hero),
        ],
      ),
    );
  }
}
