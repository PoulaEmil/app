// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../model/meal.dart';
import '../screens/order_item.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.products,
  });

  final Product products;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => OrderItemScreen(),
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(products.imageUrl),
            width: double.infinity,
            height: 195,
            fit: BoxFit.fill,
          ),
          Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 177, 173, 173).withOpacity(0.5),
            child: Text(
              products.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color.fromARGB(255, 44, 43, 43),
                fontSize: 16,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.add_shopping_cart_sharp),
                  Text(
                    '${products.quantity.toString()} Piece',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '\$${products.price.toString()} ',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
