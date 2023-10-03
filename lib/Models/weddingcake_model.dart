import 'package:flutter/material.dart';

class WeddingCakeModel {
  final String flavor;
  final String price;
  final dynamic color;
  final String imagePath;
  WeddingCakeModel(
      {required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<WeddingCakeModel> wedding = [
    WeddingCakeModel(
        flavor: 'Wedding',
        price: '\$290',
        color: Colors.brown,
        imagePath: 'assets/weddingcake/b1.jpg'),
    WeddingCakeModel(
        flavor: 'Reception',
        price: '\$180',
        color: Colors.red,
        imagePath: 'assets/weddingcake/b2.jpg'),
    WeddingCakeModel(
        flavor: 'Pre-Wedding',
        price: '\$245',
        color: Colors.purple,
        imagePath: 'assets/weddingcake/b3.jpg'),
    WeddingCakeModel(
        flavor: 'Engagement',
        price: '\$100',
        color: Colors.green,
        imagePath: 'assets/weddingcake/b4.jpg'),
    WeddingCakeModel(
        flavor: 'Anversary',
        price: '\$345',
        color: Colors.orange,
        imagePath: 'assets/weddingcake/b5.jpg')
  ];
}
