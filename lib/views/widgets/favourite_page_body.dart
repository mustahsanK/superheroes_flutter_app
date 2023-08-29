import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/favourites_controller.dart';

class FavouritePageBody extends StatelessWidget {
  FavouritePageBody({super.key});

  final favController = Get.put(FavouritesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GetX<FavouritesController>(
          builder: (controller) {
            if (controller.favouriteHeroes.isEmpty) return const Center(child: Text('Nan'));
            return ListView.builder(
              itemCount: controller.favouriteHeroes.length,
              itemBuilder: (context, index) {
                return Card(child: Text(controller.favouriteHeroes[index].id + controller.favouriteHeroes[index].name));
              },
            );
          },
        ),
      ),
    );
  }
}
