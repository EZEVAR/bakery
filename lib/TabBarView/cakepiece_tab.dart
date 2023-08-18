import 'package:flutter/material.dart';

import '../Utilities/Tiles/cakepiece_tile.dart';

class CakePiecesTab extends StatelessWidget {
  const CakePiecesTab({super.key});

  @override
  Widget build(BuildContext context) {
    List cakePieces = [
      // flavor, price, color, image
      ['Strawberry', '\$300', Colors.red, 'assets/cakepieces/'],
      ['Plain cake', '\$300', Colors.purple, 'assets/cakepieces/'],
      ['Chcolate', '\$300', Colors.brown, 'assets/cakepieces/'],
      ['Black Forest', '\$500', Colors.green, 'assets/cakepieces/'],
      ['Raspberry', '\$150', Colors.orange, 'assets/cakepieces/']
    ];
    return GridView.builder(
        itemCount: cakePieces.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return CakePieceTile(
            flavor: cakePieces[index][0],
            price: cakePieces[index][1],
            colors: cakePieces[index][2],
            imagePath: cakePieces[index][3],
          );
        });
  }
}
