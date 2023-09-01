import 'package:flutter/material.dart';
import '../models/muffins_model.dart';
import '../utilities/Tiles/muffins_tile.dart';
import '../pages/muffins.dart';

class MuffinsTab extends StatelessWidget {
  const MuffinsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<MuffinsModel> muffinss = MuffinsModel.muffins;
    return MuffinsGrid(muffinss: muffinss);
  }
}

class MuffinsGrid extends StatelessWidget {
  const MuffinsGrid({
    Key? key,
    required this.muffinss,
  }) : super(key: key);

  final List<MuffinsModel> muffinss;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: muffinss.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          MuffinsModel muffinsModel = muffinss[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MuffinsCakePage(muffins: muffinsModel)));
            },
            child: MuffinTiles(
                flavor: muffinsModel.flavor,
                imagePath: muffinsModel.imagePath,
                price: muffinsModel.price,
                colors: muffinsModel.color),
          );
        });
  }
}
