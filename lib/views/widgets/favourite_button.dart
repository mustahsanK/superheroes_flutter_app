import 'package:flutter/material.dart';

class FavouriteButton extends StatelessWidget {
  final double size;
  
  const FavouriteButton(this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        Icons.favorite,
        size: size,
      ),
      onTap: () {
        
      },
    );
  }
}
