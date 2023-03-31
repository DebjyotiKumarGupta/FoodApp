import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget signalProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 250,
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image(image: AssetImage('Assets/basil.png')),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fresh Basil",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '50\$/50 Gram',
                    style: TextStyle(color: Colors.grey),
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 4),
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(children: [
                            Expanded(
                              child: Text(
                                '50 Gram',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Icon(Icons.arrow_drop_down,
                                  size: 20, color: Colors.yellow),
                            ),
                          ]),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              // color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.remove,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.yellow[800]),
                                ),
                                Icon(
                                  Icons.add,
                                  size: 20,
                                  color: Colors.amber,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         height: 30,
                  //         width: 120,
                  //         child: OutlinedButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             children: [
                  //               Expanded(child: Text('50 Gram')),
                  //               Expanded(
                  //                 child: Icon(Icons.arrow_drop_down,
                  //                     size: 20,
                  //                     color: Colors.yellow),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Container(
                  //         height: 30,
                  //         width: 120,
                  //         child: OutlinedButton(
                  //           onPressed: () {},
                  //           child: Row(
                  //             children: [
                  //               Text('50 Gram'),
                  //               Icon(Icons.arrow_drop_down,
                  //                   size: 20, color: Colors.yellow),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      drawer: Drawer(),
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
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
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
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
                    signalProducts(),
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
