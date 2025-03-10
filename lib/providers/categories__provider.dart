import 'package:flutter/material.dart';

import '../model/category.dart';
import '../model/meal.dart';

class CategoryProvider extends ChangeNotifier {
  late String value = '';
  late String value1 = '';
  late String value2 = '';

  late String fun1 = '';
  late String fun2 = '';
  late String fun3 = '';
  late String fun4 = '';
  late String fun5 = '';
  late String fun6 = '';

  final List<Category> availableCategories = [
    const Category(
        id: 'Hoodies',
        title: 'Hoodies',
        imgURL: 'images/hoodies.jpg',
        products: [
          Product(
            catId: 'Hoodies',
            id: 'p1',
            imageUrl:
                'https://terrathread.com/cdn/shop/files/men_hoodies.jpg?v=1729562005',
            name: 'Hoodie Number 1',
            price: 30,
            quantity: 150,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p2',
            imageUrl:
                'data:image/jpeg;base64,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',
            name: 'Hoodie Number 2',
            price: 50,
            quantity: 300,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p3',
            imageUrl:
                'https://media.boohoo.com/i/boohoo/bmm56040_black_xl/male-black-man-signature-over-the-head-hoodie/?w=900&qlt=default&fmt.jp2.qlt=70&fmt=auto&sm=fit',
            name: 'Hoodie Number 3',
            price: 30,
            quantity: 150,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p4',
            imageUrl:
                'https://imagescdn.simons.ca/images/4386-240104-16-A1_2/alpine-hoodie.jpg?__=3',
            name: 'Hoodie Number 4',
            price: 30,
            quantity: 150,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p5',
            imageUrl:
                'data:image/jpeg;base64,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',
            name: 'Hoodie Number 5',
            price: 30,
            quantity: 150,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p6',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpch6W7lHPmdEh7-OcEqK515PwK5JiU7MM_A&s',
            name: 'Hoodie Number 6',
            price: 30,
            quantity: 150,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p7',
            imageUrl:
                'https://caslay.in/cdn/shop/files/4M6A0227.jpg?v=1728708874&width=533',
            name: 'Hoodie Number 7',
            price: 30,
            quantity: 150,
          ),
          Product(
            catId: 'Hoodies',
            id: 'p8',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfq5_b454zAzBUDRGLfFKw7ixS4hvGZxYLRg&s',
            name: 'Hoodie Number8',
            price: 30,
            quantity: 150,
          ),
        ]),
    const Category(
        id: 'Jackets',
        title: 'Jackets',
        imgURL: 'images/jackets.jpg',
        products: []),
    const Category(
        id: 'Pants', title: 'Pants', imgURL: 'images/pants.jpg', products: []),
    const Category(
        id: 'Shoes', title: 'Shoes', imgURL: 'images/shoes.jpg', products: []),
    const Category(
        id: 'Pyjamas',
        title: 'Pyjamas',
        imgURL: 'images/pyjama.jpg',
        products: []),
    const Category(
        id: 'Bags', title: 'Bags', imgURL: 'images/bag.jpg', products: []),
    const Category(
        id: 'Slippers',
        title: 'Slippers',
        imgURL: 'images/slipper.jpg',
        products: []),
    const Category(
        id: 'Shirts',
        title: 'Shirts',
        imgURL: 'images/shirt.jpg',
        products: []),
  ];
  addCategory({Category? category}) {
    availableCategories.add(category!);
    notifyListeners();
  }

  addProduct({Product? product, String? index}) {
    // ignore: avoid_function_literals_in_foreach_calls
    availableCategories.forEach((e) {
      if (e.id == index) {
        e.products!.add(product!);
      }
    });
    notifyListeners();
    // ignore: avoid_print
    print(availableCategories[0].products!.length);
  }
}
