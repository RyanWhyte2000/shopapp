import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/Products.dart';
import 'package:shopapp/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context)),
      actions: <Widget>[
        IconButton(
            onPressed: () {}, icon: Icon(Icons.search, color: Colors.white)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.white)),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
