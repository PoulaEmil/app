import 'meal.dart';

class Category {
  final String? id;
  final String? title;
  final String? imgURL;
  final List<Product>? products;
  final String? H;

  const Category(
    this.H, {
    this.products,
    this.id,
    this.title,
    this.imgURL,
  });
}
