import 'package:get/get.dart';

import 'package:superheroes_app/database/superheroes_database.dart';
import 'package:superheroes_app/models/superhero.dart';
import 'package:superheroes_app/services/get_hero.dart';

class FavouritesController extends GetxController {
  List<Superhero> favouriteHeroes = List<Superhero>.empty(growable: true).obs;
  Set<String> idSet = {};

  getAllFavourites() async {
    final List<Map<String, dynamic>> maps = await SuperheroesDatabase().getAllRows();
    for (var map in maps) {
      favouriteHeroes.add(await getHero(map['id']));
      idSet.add(map['id']);
    }
  }

  addToFavourites(Superhero hero) async {
    await SuperheroesDatabase().insertIntoTable(hero);
    favouriteHeroes.add(hero);
    idSet.add(hero.id);
  }

  deleteFromFavourites(Superhero hero) async {
    await SuperheroesDatabase().deleteFromTable(hero);
    favouriteHeroes.removeWhere((element) => element.id == hero.id);
    idSet.remove(hero.id);
  }
}