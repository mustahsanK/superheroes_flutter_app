import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superheroes_app/views/widgets/favourite_button.dart';

import '../../controllers/favourites_controller.dart';
import '../../controllers/search_controller.dart';
import '../screens/profile_screen.dart';

class SearchList extends StatelessWidget {
  final searchController = Get.put(SuperheroSearchController());
  final favController = Get.put(FavouritesController());

  SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<SuperheroSearchController>(
      builder: (controller) {
        if (controller.results.isEmpty) return const Center(child: Text('No Result!!!'));
        return ListView.builder(
          itemCount: controller.results.length,
          itemBuilder: (context, index) {
            return Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: SizedBox(
                      height: 150,
                      child: Image.network(controller.results[index].image, fit: BoxFit.fitHeight)
                    ),
                    onTap: () {
                      Get.to(ProfileScreen(controller.results[index]));
                    }),
                  Text(controller.results[index].name, style: const TextStyle(fontSize: 30), maxLines: 3),
                  FavoriteButton(30, controller.results[index])
                ],
              ),
            );
          },
        );
      },
    );
  }
}
