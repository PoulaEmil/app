import 'meal.dart';

class Category {
  final String? id;
  final String? title;
  final String? imgURL;
  final List<Product>? products;

  const Category({
     this.products,
     this.id,
     this.title,
     this.imgURL,
  });
}
