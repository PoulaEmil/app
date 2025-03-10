import 'package:first_practice_flutter/model/category.dart';
import 'package:first_practice_flutter/providers/categories__provider.dart';
import 'package:first_practice_flutter/widgets/add_category.dart';
import 'package:first_practice_flutter/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CategoryProvider>(
        builder: (context, provider, _) => Scaffold(
              body: Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/logo.png',
                                fit: BoxFit.fill,
                                height: 150,
                              ),
                              TextButton.icon(
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 100,
                                ),
                                label: const Text(
                                  'Add New Category',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AddCategory(
                                        onChange: (v) {
                                          provider.value = v;
                                        },
                                        onChange1: (v) {
                                          provider.value1 = v;
                                        },
                                        onChange2: (v) {
                                          provider.value2 = v;
                                        },
                                        onTap: () {
                                          provider.addCategory(
                                              category: Category(
                                                  products: [],
                                                  id: provider.value,
                                                  imgURL: provider.value1,
                                                  title: provider.value2));
                                        },
                                      ); // Display the AddCategory widget
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: provider.availableCategories.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (_, i) => CategoryGridItem(
                            category: provider.availableCategories[i]),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
