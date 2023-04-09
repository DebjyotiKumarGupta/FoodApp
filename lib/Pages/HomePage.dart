import 'package:flutter/material.dart';
import 'package:my_app/Pages/Product_overview/product_overview.dart';
import 'package:my_app/main.dart';
import 'Single.dart';
import './Drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget ListTitle({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: Draw(),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        actions: [
          CircleAvatar(
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
            radius: 12,
            backgroundColor: Colors.amber[100],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              child: Icon(
                Icons.shop,
                size: 17,
                color: Colors.black,
              ),
              radius: 12,
              backgroundColor: Colors.amber[100],
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 227, 205, 6),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('Assets/food.jpg'),
                    )),
                child: Row(children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 150,
                                bottom: 20,
                              ),
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 20),
                                  child: Text(
                                    "Vegi",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.green,
                                            blurRadius: 30,
                                            offset: Offset(2, 2))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "30% OFF",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black,
                                      offset: Offset(3, 3)),
                                ],
                              ),
                            ),
                            Text(
                              "All vegtable are available here",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.yellow,
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.black,
                                      offset: Offset(3, 3)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  Expanded(
                      child: Container(
                          // color: Colors.red,
                          )),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Herbs Seasonings",
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Product_Overview(
                                    productName: 'Fresh Basil',
                                    productImage:
                                        'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                                  )),
                        );
                      },
                    ),
                    signalProducts(
                        productImage:
                            'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                        productName: 'Fresh Basil',
                        tap: () {}),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fresh Fruits",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Root Vegatables",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
                    signalProducts(
                      productImage:
                          'https://assets.stickpng.com/images/58bf1e2ae443f41d77c734ab.png',
                      productName: 'Fresh Basil',
                      tap: () {},
                    ),
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
