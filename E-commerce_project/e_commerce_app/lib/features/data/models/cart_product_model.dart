class CartProductModel {
  final int id;
  final String brandName;
  final String itemName;
  final double price;
  int quantityCount;
  final String description;
  final String image;

  CartProductModel({
    required this.brandName,
    required this.itemName,
    required this.price,
    required this.quantityCount,
    required this.id,
    required this.description,
    required this.image,
  });

  factory CartProductModel.fromJson(Map<String, dynamic> json) {
    return CartProductModel(
      id: json['id'] as int,
      brandName: json['brandName'] as String,
      itemName: json['itemName'] as String,
      price: (json['price'] as num).toDouble(),
      quantityCount: json['quantityCount'] as int,
      description: json['description'] as String,
      image: json['image'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'brandName': brandName,
      'itemName': itemName,
      'price': price,
      'quantityCount': quantityCount,
      'description': description,
      'image': image,
    };
  }
}
