import 'package:flutter/material.dart';

class MuffinsModel {
  final String flavor;
  final String price;
  final dynamic color;
  final String imagePath;
  MuffinsModel(
      {required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<MuffinsModel> muffins = [
    MuffinsModel(
        flavor: 'Vainilla',
        price: '\$350',
        color: Colors.brown,
        imagePath: 'assets/muffins/muffins1.jpg'),
    MuffinsModel(
        flavor: 'Frambuesa',
        price: '\$150',
        color: Colors.red,
        imagePath: 'assets/muffins/muffins2.jpg'),
    MuffinsModel(
        flavor: 'Americano',
        price: '\$180',
        color: Colors.purple,
        imagePath: 'assets/muffins/muffins3.jpg'),
    MuffinsModel(
        flavor: 'Aràndano',
        price: '\$320',
        color: Colors.green,
        imagePath: 'assets/muffins/muffins4.jpg'),
    MuffinsModel(
        flavor: 'Zanahoria',
        price: '\$230',
        color: Colors.orange,
        imagePath: 'assets/muffins/muffins5.jpg')
  ];
}
