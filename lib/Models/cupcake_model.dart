import 'package:flutter/material.dart';

class CupCakeModel {
  final String flavor;
  final String price;
  final color;
  final String imagePath;
  CupCakeModel(
      {required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<CupCakeModel> cupcake = [
    CupCakeModel(
        flavor: 'Cupcakes de chocolate',
        price: '\$63',
        color: Colors.brown,
        imagePath: 'assets/cupcakes/c1.jpeg'),
    CupCakeModel(
        flavor: 'Cupcake Red Velvet',
        price: '\$100.50',
        color: Colors.pink,
        imagePath: 'assets/cupcakes/c2.jpeg'),
    CupCakeModel(
        flavor: 'Thermomix',
        price: '\$86',
        color: Colors.purple,
        imagePath: 'assets/cupcakes/c3.jpeg'),
    CupCakeModel(
        flavor: 'Cupcakes de Elote',
        price: '\$73',
        color: Colors.green,
        imagePath: 'assets/cupcakes/c4.jpeg'),
    CupCakeModel(
        flavor: 'Cupcakes sin gluten',
        price: '\$250',
        color: Colors.orange,
        imagePath: 'assets/cupcakes/c5.jpeg')
  ];
}
