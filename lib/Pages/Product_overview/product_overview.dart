import 'package:flutter/material.dart';
import 'package:my_app/Pages/colors.dart';

enum SinginCharacter { fill, outline }

class Product_Overview extends StatefulWidget {
  final String productName;
  final String productImage;
  Product_Overview(
      {super.key, required this.productName, required this.productImage});
  @override
  State<Product_Overview> createState() => _Product_OverviewState();
}

class _Product_OverviewState extends State<Product_Overview> {
  SinginCharacter _character = SinginCharacter.fill;

  @override
  Widget bottomNavigationbar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
  }) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      color: backgroundColor,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          iconData,
          size: 17,
          color: iconColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: color,
          ),
        ),
      ]),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationbar(
              iconColor: Colors.white,
              backgroundColor: textColor,
              color: Colors.white,
              title: "Add To WishList",
              iconData: Icons.favorite_outline),
          bottomNavigationbar(
              iconColor: Colors.white,
              backgroundColor: primaryColor,
              color: textColor,
              title: "Go To Cart",
              iconData: Icons.shop_outlined),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Product Overview",
          style: TextStyle(color: textColor),
        ),
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(
          color: textColor,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      widget.productName ?? "",
                    ),
                    subtitle: Text("\$50"),
                  ),
                  Container(
                      // color: Colors.red,
                      height: 250,
                      padding: EdgeInsets.all(40),
                      child: Image.network(widget.productImage ?? "")),
                  Container(
                    width: double.infinity,
                    // color: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Available Options",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green,
                            ),
                            Radio(
                              value: SinginCharacter.fill,
                              activeColor: Colors.green[700],
                              onChanged: (value) {
                                setState(() {
                                  _character = value!;
                                });
                              },
                              groupValue: _character,
                            ),
                          ],
                        ),
                        Text("\$50"),
                        Container(
                          // color: Colors.red,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey),
                            // color: primaryColor,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                              ),
                              Text(
                                "ADD",
                                style: TextStyle(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "About This Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Basil is a fragrant herb with a distinctive flavor that many people enjoy. The various types have different flavors. In cooking, sweet basil is the most popular variety in the U.S., but people also use lemon basil, clove basil, cinnamon basil, and other types.",
                  style: TextStyle(
                    fontSize: 16,
                    // fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
