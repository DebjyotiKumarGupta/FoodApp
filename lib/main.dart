import 'package:flutter/material.dart';
import 'package:my_app/Pages/HomePage.dart';
import 'package:my_app/Pages/Product_overview/product_overview.dart';
import 'package:my_app/Pages/colors.dart';
import 'package:my_app/auth/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';
// import './Pages/Homepage.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
