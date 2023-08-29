import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:superheroes_app/views/widgets/search_list.dart';

import '../../controllers/search_controller.dart';

class SearchPageBody extends StatelessWidget {
  SearchPageBody({super.key});

  final searchController = Get.put(SuperheroSearchController());
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: TextField(
                controller: textController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name',
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  searchController.updateResult(textController.text);
                },
                child: const Text('Search')
            ),
            Expanded(child: SearchList()),
          ],
        ),
      ),
    );
  }
}
