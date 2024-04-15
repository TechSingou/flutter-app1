import 'package:flutter/material.dart';
import 'package:my_app4/pages/about.page.dart';
import 'package:my_app4/pages/home.page.dart';
import 'package:my_app4/pages/product.detail.dart';
import 'package:my_app4/pages/product.page.dart';
import 'package:my_app4/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      theme: MyAppTheme.themes[2],
      routes: {
        "/home": (context) => HomePage(),
        "/products": (context) => ProductPage(),
        "/about": (context) => AboutPage(),
        "/productDetail": (context) => ProductDetail(
            productId: ModalRoute.of(context)!.settings.arguments as String),
      },
      initialRoute: "/home",
    );
  }
}
