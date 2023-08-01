import 'package:get/get.dart';
import 'package:superheroes_app/models/superhero.dart';

class FavouritesController extends GetxController {
  List<Superhero> favouriteHeroes = List<Superhero>.empty().obs;

  addToFavourites(Superhero hero) {
    favouriteHeroes.add(hero);
  }
}