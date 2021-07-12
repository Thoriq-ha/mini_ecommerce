import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_ecommerce/models/product.dart';
import 'package:mini_ecommerce/screens/home_screen/components/categories.dart';

import '../../../constrant.dart';
import 'item_card.dart';

Column buildBody(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Text(
          'Women',
          style: Theme
              .of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      Categories(),
      Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: kDefaultPaddin,
                    crossAxisSpacing: kDefaultPaddin,
                    childAspectRatio: 0.75),
                itemBuilder: (context, index) =>
                    ItemCard(product: products[index], press: () {})),
          ))
    ],
  );
}