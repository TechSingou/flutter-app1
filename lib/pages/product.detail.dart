import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app4/pages/product.item.dart';

class ProductDetail extends StatefulWidget {
  final String productId;
  const ProductDetail({super.key, required this.productId});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  String host = "http://192.168.8.123:9000/products";
  dynamic product;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http.get(Uri.parse("$host/${widget.productId}")).then((resp) {
      setState(() {
        product = json.decode(resp.body);
      });
    }).catchError((error) => {print("*************Error**************")});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail ==> ${widget.productId}"),
      ),
      body: Center(
        child: (product != null)
            ? ProductItem(
                product: product,
                details: true,
              )
            : Container(),
      ),
    );
  }
}
