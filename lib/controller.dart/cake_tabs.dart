import 'package:flutter/material.dart';

class CakeTabs extends StatelessWidget {
  const CakeTabs({super.key, required this.iconPath, required this.colors});
  final String iconPath;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 248, 83, 83).withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Image.asset(iconPath),
      ),
    );
  }
}
