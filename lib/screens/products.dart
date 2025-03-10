import 'package:first_practice_flutter/providers/categories__provider.dart';
import 'package:first_practice_flutter/widgets/add_product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/meal.dart';
import '../widgets/productl_item.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen(
      {super.key,
      required this.products,
      required this.title,
      required this.id});

  final String title;
  final List<Product> products;
  final String id;
  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
        builder: (_, provider, i) => Scaffold(
              appBar: AppBar(
                title: Text(title),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.black,
                    iconSize: 50,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AddProduct(
                            fun1: (v) {
                              provider.fun1 = v;
                            },
                            fun2: (v) {
                              provider.fun2 = v;
                            },
                            fun3: (v) {
                              provider.fun3 = v;
                            },
                            fun4: (v) {
                              provider.fun4 = v;
                            },
                            fun5: (v) {
                              provider.fun5 = v;
                            },
                            fun6: (v) {
                              provider.fun6 = v;
                            },
                            addFun: () {
                              provider.addProduct(
                                  index: id,
                                  product: Product(
                                      id: id,
                                      catId: provider.fun1,
                                      name: provider.fun2,
                                      imageUrl: provider.fun3,
                                      price: double.parse(provider.fun4),
                                      quantity: int.parse(provider.fun6)));
                            },
                          );
                        },
                      );
                    },
                  )
                ],
              ),
              body: GridView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                  crossAxisCount: 2,
                ),
                itemBuilder: (_, i) => ProductItem(products: products[i]),
              ),
            ));
  }
}
