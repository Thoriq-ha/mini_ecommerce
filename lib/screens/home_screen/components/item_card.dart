import 'package:flutter/cupertino.dart';
import 'package:mini_ecommerce/constrant.dart';
import 'package:mini_ecommerce/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(color: product.color, borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.all(kDefaultPaddin),
            child: Hero(
              tag: "${product.id}",
              child: Image.asset(product.image),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              // products is out demo list
              product.title,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
