import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  dynamic product;
  final bool details;
  ProductItem({super.key, required this.product, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${product['name']}"),
                            Text("${product['price']}"),
                            (product['promotion'] == true)
                                ? Icon(
                                    Icons.favorite,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Container(),
                            Row(
                              children: [
                                for (int i = 0; i < product['stars']; i++)
                                  Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            //builder: (context) {
                            //return ProductDetail(productId: product['id'],);
                            //}
                            builder: (context) => ProductDetail(
                                  productId: product['id'],
                                )),
                      );*/
                      Navigator.pushNamed(context, "/productDetail",
                          arguments: product['id']);
                    },
                    child: Image(
                      image: AssetImage("${product['image']}"),
                    ),
                  ),
                ],
              ),
            ),
            if (details == true)
              Card(
                child: Text("${product['description']}"),
              )
          ],
        ),
      ),
    );
    ;
  }
}
