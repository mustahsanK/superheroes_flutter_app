import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/favourites_controller.dart';
import '../../controllers/search_controller.dart';
import 'list_item.dart';

class SearchList extends StatelessWidget {
  final searchController = Get.put(SuperheroSearchController());
  final favController = Get.put(FavouritesController());

  SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<SuperheroSearchController>(
      builder: (controller) {
        if (controller.results.isEmpty) return const Center(child: Text('No Result!!!'));
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2/3.6,
          ),
          itemCount: controller.results.length,
          itemBuilder: (context, index) {
            return Item(controller.results[index]);
          },
        );
      },
    );
  }
}
