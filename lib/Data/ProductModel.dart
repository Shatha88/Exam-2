// ignore_for_file: file_names

class Product {
  final String name;
  final String price;
  int? productCount = 0;

  Product({
    this.productCount,
    required this.name,
    required this.price,
  });

  factory Product.fromJson({required Map json}) {
    return Product(
      name: json["name"],
      price: json["price"],
      productCount: json["productCount"],
    );
  }
  setProductCount() {
    productCount = (productCount! + 1);
  }

  static List<Product> cart = [];
}
