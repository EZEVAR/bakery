import '../utilities/Tiles/cakepiece_tile.dart';

import 'package:flutter/material.dart';
import '../models/cakepiece_model.dart';
import '../pages/cakepiece.dart';

class CakePiecesTab extends StatelessWidget {
  const CakePiecesTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CakepieceModel> cakepieces = CakepieceModel.cakepiece;
    return CakepieceGrid(cakepieces: cakepieces);
  }
}

class CakepieceGrid extends StatelessWidget {
  const CakepieceGrid({
    Key? key,
    required this.cakepieces,
  }) : super(key: key);

  final List<CakepieceModel> cakepieces;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: cakepieces.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          CakepieceModel cakepieceModel = cakepieces[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CakepieceCakePage(cakepiece: cakepieceModel)));
            },
            child: CakePieceTile(
                flavor: cakepieceModel.flavor,
                imagePath: cakepieceModel.imagePath,
                price: cakepieceModel.price,
                colors: cakepieceModel.color),
          );
        });
  }
}
