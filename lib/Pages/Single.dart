import 'package:auth_buttons/auth_buttons.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class signalProducts extends StatefulWidget {
  final String productImage;
  final String productName;
  final Function tap;
  signalProducts(
      {required this.productImage,
      required this.productName,
      required this.tap});

  @override
  State<signalProducts> createState() => _signalProductsState();
}

class _signalProductsState extends State<signalProducts> {
  @override
  Widget build(BuildContext context) {
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
          GestureDetector(
            onTap: () {
              widget.tap();
            },
            child: Expanded(flex: 2, child: Image.network(widget.productImage)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productName,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
