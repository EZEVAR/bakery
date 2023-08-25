import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '../TabBarView/birthday_tab.dart';
import '../TabBarView/cakepiece_tab.dart';
import '../TabBarView/cupcake_tab.dart';
import '../TabBarView/muffins_tab.dart';
import '../TabBarView/wedding_tab.dart';
import '../controller.dart/cake_tabs.dart';

class MyProductPage extends StatefulWidget {
  const MyProductPage({super.key});
  static const name = 'product';
  @override
  MyProductPageState createState() => MyProductPageState();
}

class MyProductPageState extends State<MyProductPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> cakeTabs = [
      CakeTabs(
          iconPath: 'assets/icons/birthday-cakeicon.png',
          colors: Colors.pink.shade50),
      CakeTabs(
          iconPath: 'assets/icons/cupcakeicon.png',
          colors: Colors.teal.shade50),
      CakeTabs(
          iconPath: 'assets/icons/piece-of-cakeicon.png',
          colors: Colors.brown.shade50),
      CakeTabs(
          iconPath: 'assets/icons/muffinicon.png',
          colors: Colors.yellow.shade50),
      CakeTabs(
          iconPath: 'assets/icons/weddingcakeicon.png',
          colors: Colors.red.shade50)
    ];
    return DefaultTabController(
      length: cakeTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[50],
          title: const Text(
            'Bakery',
            style: TextStyle(color: Color.fromARGB(255, 44, 1, 51)),
          ),
          elevation: 0.0,
          leading: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 44, 1, 51),
            size: 30,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.red,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.person,
                color: Colors.blue,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
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
                            color: Colors.purple[50],
                          ),
                          child: ImageSlideshow(
                            width: double.infinity,
                            initialPage: 0,
                            indicatorColor:
                                const Color.fromARGB(255, 230, 223, 231),
                            onPageChanged: (value) {},
                            autoPlayInterval: 5000,
                            isLoop: true,
                            children: [
                              Image.asset(
                                'assets/img1.jpg',
                              ),
                              Image.asset(
                                'assets/img2.jpg',
                              ),
                              Image.asset(
                                'assets/img3.jpg',
                              ),
                              Image.asset(
                                'assets/img5.jpg',
                              ),
                              Image.asset(
                                'assets/img6.jpg',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 10),
                child: Text(
                  'Elije nuestros productos',
                  style: TextStyle(
                      color: Color.fromARGB(255, 56, 2, 64),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              TabBar(tabs: cakeTabs),
              const Expanded(
                child: TabBarView(
                  children: [
                    // Birthday cakes
                    BirthdaysTab(),
                    // Cupcakes
                    CupCakesTab(),
                    // cake pieces
                    CakePiecesTab(),
                    // muffins
                    MuffinsTab(),
                    // Wedding cake
                    WeddingCakeTab()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
