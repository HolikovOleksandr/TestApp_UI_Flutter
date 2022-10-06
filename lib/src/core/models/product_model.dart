import 'dart:convert';

class ProductModel {
  String id;
  final String name;
  final String price;
  final String cashback;
  final String image;
  final String store;
  final String wendorImage;
  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.cashback,
    required this.image,
    required this.store,
    required this.wendorImage,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? price,
    String? cashback,
    String? image,
    String? store,
    String? wendorImage,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      cashback: cashback ?? this.cashback,
      image: image ?? this.image,
      store: store ?? this.store,
      wendorImage: wendorImage ?? this.wendorImage,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, cashback: $cashback, image: $image, store: $store, wendorImage: $wendorImage)';
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
      other.wendorImage == wendorImage;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      price.hashCode ^
      cashback.hashCode ^
      image.hashCode ^
      store.hashCode ^
      wendorImage.hashCode;
  }
}
