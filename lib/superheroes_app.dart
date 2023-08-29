import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:superheroes_app/superheroes_theme.dart';
import 'package:superheroes_app/views/screens/home_screen.dart';

class SuperheroesApp extends StatelessWidget {
  const SuperheroesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      theme: appTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
