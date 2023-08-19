import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/search_controller.dart';
import '../screens/profile_screen.dart';

class SearchList extends StatelessWidget {
  final searchController = Get.put(SuperheroSearchController());

  SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<SuperheroSearchController>(
      builder: (controller) {
        if (controller.results.isEmpty) return const Center(child: Text('Type to search!!!'));
        return ListView.builder(
          itemCount: controller.results.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Image.network(controller.results[index].image, fit: BoxFit.fitHeight)
                    ),
                    Text(controller.results[index].name, style: const TextStyle(fontSize: 30))
                  ],
                ),
              ),
              onTap: () {
                Get.to(ProfileScreen(controller.results[index]));
              },
            );
          },
        );
      },
    );
  }
}
