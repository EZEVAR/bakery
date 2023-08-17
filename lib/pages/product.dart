import 'package:flutter/material.dart';

class MyProductPage extends StatefulWidget {
  const MyProductPage({super.key});
  static const name = 'product';
  @override
  MyProductPageState createState() => MyProductPageState();
}

class MyProductPageState extends State<MyProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);

              /// button volver a inicio
            },

            /// prueba
          ),
          title: const Text('BAKERY', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 250.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 230.0,
                                width: MediaQuery.of(context).size.width -
                                    MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: const DecorationImage(
                                        image: AssetImage('assets/img4.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              const Positioned(
                                left: 15.0,
                                top: 130.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Medialunas',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Quicksand',
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '\$500',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand',
                                        fontSize: 20.0,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 5.0),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: Text(
                    'Productos',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 15.0),
                GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildFoodCard(
                      'chocolat cake',
                      'Italy',
                      'assets/img1.jpg',
                      64,
                    ),
                    _buildFoodCard(
                      'Mousse',
                      'China',
                      'assets/img2.jpg',
                      64,
                    ),
                    _buildFoodCard(
                      'Raspberry',
                      'Italy',
                      'assets/img3.jpg',
                      64,
                    ),
                    _buildFoodCard(
                      'Cupcake',
                      'Sweden',
                      'assets/img5.jpg',
                      64,
                    ),
                    _buildFoodCard(
                      'Cupcake',
                      'Sweden',
                      'assets/img6.jpg',
                      64,
                    ),
                    _buildFoodCard(
                      'Cupcake',
                      'Sweden',
                      'assets/img7.jpg',
                      64,
                    ),
                  ],
                ),
                SizedBox(height: 10.0)
              ],
            )
          ],
        ));
  }

  Widget _buildFoodCard(
      String name, String origin, String cardImage, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ? EdgeInsets.only(right: 15.0)
          : EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(cardImage), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: const TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.attach_money,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text('${200}')
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber),
                child: const Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
