import 'package:bakery/widget/ofertacard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:go_router/go_router.dart';
import '../app/bloc/app_bloc.dart';
import '../tab_bar_view/birthday_tab.dart';
import '../tab_bar_view/cakepiece_tab.dart';
import '../tab_bar_view/cupcake_tab.dart';
import '../tab_bar_view/muffins_tab.dart';
import '../tab_bar_view/wedding_tab.dart';
import '../controller.dart/cake_tabs.dart';
import '../theme.dart';

class MyProductPage extends StatefulWidget {
  const MyProductPage({super.key});
  static const name = 'product';
  @override
  MyProductPageState createState() => MyProductPageState();

  static Page<void> page() => const MaterialPage<void>(child: MyProductPage());
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
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: theme.primaryColorLight,
          title: Image.asset(
            'assets/onboard1bg.png',
            width: 115,
            height: 115,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Color.fromARGB(255, 12, 12, 12),
                size: 30,
              ),
              onPressed: () {
                context.go('');
              },
            ),
            IconButton(
              key: const Key('homePage_logout_iconButton'),
              color: const Color.fromARGB(243, 252, 2, 43),
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AppBloc>().add(const AppLogoutRequested());
              },
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: const Color.fromARGB(0, 255, 254, 254),
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
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 251, 250, 251),
                          ),
                          child: ImageSlideshow(
                            width: double.infinity,
                            initialPage: 0,
                            indicatorColor:
                                const Color.fromARGB(255, 251, 249, 252),
                            onPageChanged: (value) {},
                            autoPlayInterval: 5000,
                            isLoop: true,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/img1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/img2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/img3.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/img5.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/img6.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )
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
              const OfertaCard(title: 'OFERTAS'),
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
