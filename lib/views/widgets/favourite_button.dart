import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superheroes_app/controllers/favourites_controller.dart';
import 'package:superheroes_app/models/superhero.dart';

class FavoriteButton extends StatefulWidget {
  final double size;
  final Superhero hero;

  const FavoriteButton(this.size, this.hero, {super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  final favouritesController = Get.put(FavouritesController());
  late bool isFilled;

  @override
  void initState() {
    isFilled = false;
    if (favouritesController.idSet.contains(widget.hero.id)) isFilled = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: buildFavIcon(),
      onTap: () {
        Superhero hero = widget.hero;
        if (isFilled) {
          favouritesController.deleteFromFavourites(hero);
        } else {
          favouritesController.addToFavourites(hero);
        }
        setState(() {
          isFilled = !isFilled;
        });
      },
    );
  }

  Widget buildFavIcon() {
    double size = widget.size;
    if (isFilled) return Icon(Icons.favorite, size: size);
    return Icon(Icons.favorite_border_outlined, size: size);
  }
}
