import 'package:flutter/material.dart';
import '../Utilities/Tiles/muffins_tile.dart';

class MuffinsTab extends StatelessWidget {
  const MuffinsTab({super.key});

  @override
  Widget build(BuildContext context) {
    List muffins = [
      // flavor, price, color, image
      ['Strawbeer', '\$90', Colors.red, 'assets/muffins/'],
      ['Vanila', '\$80', Colors.green, 'assets/muffins/'],
      ['Caramel', '\$45', Colors.brown, 'assets/muffins/'],
      ['Mango', '\$78', Colors.purple, 'assets/muffins/'],
      ['Chocolate', '\$65', Colors.orange, 'assets/muffins/']
    ];
    return GridView.builder(
        itemCount: muffins.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return MuffinTiles(
            flavor: muffins[index][0],
            price: muffins[index][1],
            colors: muffins[index][2],
            imagePath: muffins[index][3],
          );
        });
  }
}
