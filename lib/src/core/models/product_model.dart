import 'dart:convert';

class ProductModel {
  String id;
  final String name;
  final String price;
  final String cashback;
  final String image;
  final String store;
  final String wendorImage;
  final String wendorCategory;
  final String categoryIcon;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.cashback,
    required this.image,
    required this.store,
    required this.wendorImage,
    required this.wendorCategory,
    required this.categoryIcon,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? price,
    String? cashback,
    String? image,
    String? store,
    String? wendorImage,
    String? wendorCategory,
    String? categoryIcon,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      cashback: cashback ?? this.cashback,
      image: image ?? this.image,
      store: store ?? this.store,
      wendorImage: wendorImage ?? this.wendorImage,
      wendorCategory: wendorCategory ?? this.wendorCategory,
      categoryIcon: categoryIcon ?? this.categoryIcon,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'price': price});
    result.addAll({'cashback': cashback});
    result.addAll({'image': image});
    result.addAll({'store': store});
    result.addAll({'wendorImage': wendorImage});
    result.addAll({'wendorCategory': wendorCategory});
    result.addAll({'categoryIcon': categoryIcon});

    return result;
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      price: map['price'] ?? '',
      cashback: map['cashback'] ?? '',
      image: map['image'] ?? '',
      store: map['store'] ?? '',
      wendorImage: map['wendorImage'] ?? '',
      wendorCategory: map['wendorCategory'] ?? '',
      categoryIcon: map['categoryIcon'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, cashback: $cashback, image: $image, store: $store, wendorImage: $wendorImage, wendorCategory: $wendorCategory, categoryIcon: $categoryIcon)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.cashback == cashback &&
        other.image == image &&
        other.store == store &&
        other.wendorImage == wendorImage &&
        other.wendorCategory == wendorCategory &&
        other.categoryIcon == categoryIcon;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        cashback.hashCode ^
        image.hashCode ^
        store.hashCode ^
        wendorImage.hashCode ^
        wendorCategory.hashCode ^
        categoryIcon.hashCode;
  }
}
