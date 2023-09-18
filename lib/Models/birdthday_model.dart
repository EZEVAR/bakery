import 'package:flutter/material.dart';

class BirthdayModel {
  final String flavor;
  final String price;
  final dynamic color;
  final String imagePath;
  BirthdayModel(
      {required this.flavor,
      required this.price,
      required this.imagePath,
      required this.color});

  static List<BirthdayModel> birthday = [
    BirthdayModel(
        flavor: 'Chocolate',
        price: '\$2500',
        color: Colors.brown,
        imagePath: 'assets/birthdaycake/b3.jpeg'),
    BirthdayModel(
        flavor: 'Strawberry',
        price: '\$2000',
        color: Colors.red,
        imagePath: 'assets/birthdaycake/b1.jpeg'),
    BirthdayModel(
        flavor: 'happy cake',
        price: '\$1800',
        color: Colors.purple,
        imagePath: 'assets/birthdaycake/b2.jpeg'),
    BirthdayModel(
        flavor: 'Black Forest',
        price: '\$2500',
        color: Colors.green,
        imagePath: 'assets/birthdaycake/b5.jpeg'),
    BirthdayModel(
        flavor: 'Raspberry',
        price: '\$1800',
        color: Colors.orange,
        imagePath: 'assets/birthdaycake/b4.jpeg')
  ];
}
