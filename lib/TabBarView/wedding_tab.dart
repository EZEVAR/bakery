import 'package:flutter/material.dart';
import '../Models/weddingcake_model.dart';
import '../Utilities/Tiles/weddingcake_tile.dart';
import '../pages/weddingcake.dart';

class WeddingCakeTab extends StatelessWidget {
  const WeddingCakeTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<WeddingCakeModel> weddings = WeddingCakeModel.wedding;
    return WeddingCakeGrid(weddings: weddings);
  }
}

class WeddingCakeGrid extends StatelessWidget {
  const WeddingCakeGrid({
    Key? key,
    required this.weddings,
  }) : super(key: key);

  final List<WeddingCakeModel> weddings;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: weddings.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          WeddingCakeModel weddingcakeModel = weddings[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          WeddingCakePage(wedding: weddingcakeModel)));
            },
            child: WeddingCakeTile(
                flavor: weddingcakeModel.flavor,
                imagePath: weddingcakeModel.imagePath,
                price: weddingcakeModel.price,
                colors: weddingcakeModel.color),
          );
        });
  }
}
