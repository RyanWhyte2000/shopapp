import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/Products.dart';
import 'package:shopapp/screen/details/components/product_title_with_image.dart';

import 'Description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: size.height * 0.03),
                    margin: EdgeInsets.only(
                        top: size.height * 0.3,
                        left: kDefaultPaddin,
                        right: kDefaultPaddin),
                    height: 500,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )),
                    child: Column(children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Location:",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              product.location,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            Text(
                              "Contact Number:",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4!
                                  .copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "87655555 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            Description(product: product),
                            CartCounter(),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ))
        ],
      ),
    );
  }
}

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BuildOutlineButton(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 2),
          child: Text(
            "01",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }

  SizedBox BuildOutlineButton() {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: () {},
        child: Icon(Icons.remove),
      ),
    );
  }
}
