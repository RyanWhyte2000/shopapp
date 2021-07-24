import 'package:flutter/material.dart';
import 'package:shopapp/constant.dart';
import 'package:shopapp/models/Products.dart';
import 'package:shopapp/screen/details/components/product_title_with_image.dart';

import 'Description.dart';
import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';

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
                            SizedBox(
                              height: 50,
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
                            SizedBox(
                              height: kDefaultPaddin / 2,
                            ),
                            Description(product: product),
                            CounterWithFavBtn(),
                            SizedBox(
                              height: 50,
                            ),
                            AddToCart(product: product)
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
