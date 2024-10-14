import 'package:flutter/material.dart';
import 'package:reto1_donut_app_emilio_puigcerver/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //list of donuts
  final List donuts0nsale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
  ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
  ["Strawberry", "45",Colors.red, "lib/images/strawberry_donut.png"],
  ["Grape Ape", "36", Colors.purple, "lib/images/grape_donut.png"],
  ["Choco", "36", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donuts0nsale. length,
    padding: const EdgeInsets.all(12),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (
    crossAxisCount: 2, childAspectRatio: 1 / 1.5),
    itemBuilder:  (context, index) {
      return DonutTile(
        donutFlavor: donuts0nsale[index][0],
        donutPrice:donuts0nsale[index][1],
        donutColor: donuts0nsale[index][2],
        imageName:donuts0nsale[index][3],

      );
    }

    );
  }
}