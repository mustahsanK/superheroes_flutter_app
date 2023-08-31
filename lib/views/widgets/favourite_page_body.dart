import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:superheroes_app/views/widgets/list_item.dart';
import '../../controllers/favourites_controller.dart';

class FavouritePageBody extends StatelessWidget {
  FavouritePageBody({super.key});

  final favController = Get.put(FavouritesController());

  @override
  Widget build(BuildContext context) {
    return GetX<FavouritesController>(
      builder: (controller) {
        if (controller.favouriteHeroes.isEmpty) return const Center(child: Text('Nan'));
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2/3.6,
          ),
          itemCount: controller.favouriteHeroes.length,
          itemBuilder: (context, index) {
            return Item(controller.favouriteHeroes[index]);
          }
        );
      },
    );
  }
}
