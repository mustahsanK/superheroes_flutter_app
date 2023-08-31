import 'package:flutter/material.dart';

import 'package:superheroes_app/views/widgets/favourite_page_body.dart';
import 'package:superheroes_app/views/widgets/search_page_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: PageView(
            children: [
              FavouritePageBody(),
              SearchPageBody(),
            ],
          ),
        )
      ),
    );
  }
}
