import 'package:flutter/material.dart';
import '../Utilities/Tiles/cupcake_tile.dart';

class CupCakesTab extends StatelessWidget {
  const CupCakesTab({super.key});

  @override
  Widget build(BuildContext context) {
    List cupCakes = [
      // flavor, price, color, image
      ['Strawberry', '\$350', Colors.red, 'assets/cupcakes/c1.jpeg'],
      ['Vanila', '\$350', Colors.orange, 'assets/cupcakes/c3.jpeg'],
      ['Chocolate', '\$450', Colors.brown, 'assets/cupcakes/c5.jpeg'],
      ['Rose', '\$450', Colors.green, 'assets/cupcakes/c2.jpeg'],
      ['Caramel', '\$350', Colors.purple, 'assets/cupcakes/c4.jpeg']
    ];
    return GridView.builder(
        itemCount: cupCakes.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return CupCakeTiles(
            flavor: cupCakes[index][0],
            price: cupCakes[index][1],
            colors: cupCakes[index][2],
            imagePath: cupCakes[index][3],
          );
        });
  }
}
