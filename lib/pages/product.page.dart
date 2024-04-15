import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app4/pages/product.item.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<dynamic> products = [];
  String host = "http://192.168.8.123:9000/products";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http.get(Uri.parse(host)).then((resp) {
      setState(() {
        products = json.decode(resp.body);
      });
    }).catchError((error) {
      print("***************Error*****************");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products page"),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ProductItem(
              product: products[index],
              details: false,
            );
          },
        ));
  }
}
