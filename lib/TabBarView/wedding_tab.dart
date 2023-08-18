import 'package:flutter/material.dart';

import '../Utilities/Tiles/weddingcake_tile.dart';

class WeddingCakeTab extends StatelessWidget {
  const WeddingCakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    List weddingCakes = [
      // flavor, price, color, image
      ['Wedding', '\$290', Colors.brown, 'assets/weddingcakes/'],
      ['Reception', '\$180', Colors.red, 'assets/weddingcakes/'],
      ['Pre-Wedding', '\$245', Colors.purple, 'assets/weddingcakes/'],
      ['Engagement', '\$100', Colors.green, 'assets/weddingcakes/'],
      ['Anversary', '\$345', Colors.orange, 'assets/weddingcakes/']
    ];
    return GridView.builder(
        itemCount: weddingCakes.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return WeddingCakeTile(
            flavor: weddingCakes[index][0],
            price: weddingCakes[index][1],
            colors: weddingCakes[index][2],
            imagePath: weddingCakes[index][3],
          );
        });
  }
}
