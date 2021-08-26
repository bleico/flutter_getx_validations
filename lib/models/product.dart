import 'package:flutter/foundation.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final String description;
  final double rate;
  bool isFavorite = false;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.rate,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['Product ID'],
        name: json['Name'],
        price: json['Price'].toDouble(),
        description: json['Description'],
        rate: json['Rating Avg'].toDouble(),
      );
}
