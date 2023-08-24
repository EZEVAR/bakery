import 'package:flutter/material.dart';
import '../Models/cupcake_model.dart';
import '../Utilities/Tiles/cupcake_tile.dart';
import '../pages/cupcake.dart';

class CupCakesTab extends StatelessWidget {
  const CupCakesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CupCakeModel> cupcakes = CupCakeModel.cupcake;
    return CupCakeGrid(cupcakes: cupcakes);
  }
}

class CupCakeGrid extends StatelessWidget {
  const CupCakeGrid({
    Key? key,
    required this.cupcakes,
  }) : super(key: key);

  final List<CupCakeModel> cupcakes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: cupcakes.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          CupCakeModel cupcakeModel = cupcakes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CupCakePage(cupcake: cupcakeModel)));
            },
            child: CupCakeTiles(
                flavor: cupcakeModel.flavor,
                imagePath: cupcakeModel.imagePath,
                price: cupcakeModel.price,
                colors: cupcakeModel.color),
          );
        });
  }
}
