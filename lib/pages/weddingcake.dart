import 'package:flutter/material.dart';
import '../models/weddingcake_model.dart';

class WeddingCakePage extends StatelessWidget {
  const WeddingCakePage({super.key, required this.wedding});
  final WeddingCakeModel wedding;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.purple,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Colors.transparent,
              expandedHeight: 180,
              floating: true,
              snap: true,
              flexibleSpace: Stack(
                children: [
                  Positioned.fill(
                    child: ClipPath(
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: wedding.color[50],
                          ),
                          child: Image.asset(wedding.imagePath)),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 10),
                child: Text(
                  "${wedding.flavor} 🎂",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 10),
                child: Text(
                  "Ingredients",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      letterSpacing: 2),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Detalles",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Chocolate y Mas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87, fontSize: 17, wordSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.6),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              wedding.price,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  decoration: TextDecoration.underline),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Delivery pay",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
