import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/search_controller.dart';
import '../widgets/search_list.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = Get.put(SuperheroSearchController());
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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