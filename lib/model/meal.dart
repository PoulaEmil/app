class Product {
  const Product({
    required this.id,
    required this.catId,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });

  final String id;
  final String catId;
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;
}
