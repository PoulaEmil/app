import 'package:first_practice_flutter/model/category.dart';
import 'package:first_practice_flutter/screens/products.dart';
import 'package:flutter/material.dart';


class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => ProductsScreen(
                  title: category.title!,
                  products: category.products!,
                  id : category.id!,
                )));
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: Image.asset(
              category.imgURL!,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Container(
            color: Colors.black.withOpacity(.6),
            child: Text(
              category.title!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Colors.white.withOpacity(0.8),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
