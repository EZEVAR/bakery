import 'package:flutter/material.dart';

class CakepieceModel {
  final String flavor;
  final String price;
  final dynamic color;
  final String imagePath;
  CakepieceModel(
      {required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<CakepieceModel> cakepiece = [
    CakepieceModel(
        flavor: 'Strawberry',
        price: '\$25',
        color: Colors.brown,
        imagePath: 'assets/cakepieces/b3.jpg'),
    CakepieceModel(
        flavor: 'Plain cake',
        price: '\$20',
        color: Colors.red,
        imagePath: 'assets/cakepieces/b1.jpg'),
    CakepieceModel(
        flavor: 'Chocolate',
        price: '\$18',
        color:  Colors.purple,
        imagePath: 'assets/cakepieces/b2.jpg'),
    CakepieceModel(
        flavor: 'Black Forest',
        price: '\$15',
        color: Colors.green,
        imagePath: 'assets/cakepieces/b5.jpg'),
    CakepieceModel(
        flavor: 'Raspberry',
        price: '\$18',
        color: Colors.orange,
        imagePath: 'assets/cakepieces/b4.jpg')
  ];
}
