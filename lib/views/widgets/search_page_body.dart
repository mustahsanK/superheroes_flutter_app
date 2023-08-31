import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_list.dart';
import '../../controllers/search_controller.dart';

class SearchPageBody extends StatelessWidget {
  SearchPageBody({super.key});

  final searchController = Get.put(SuperheroSearchController());
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: 'Enter Name',
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 1.0),
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            onSubmitted: (s) {
              searchController.updateResult(textController.text);
            },
          ),
        ),
        const SizedBox(height: 10),
        Expanded(child: SearchList()),
      ],
    );
  }
}
