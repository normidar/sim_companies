import 'package:sim_companies/sim_companies.dart';

abstract class Product {
  final Quantity quantity;
  final Quality quality;
  const Product({
    required this.quantity,
    required this.quality,
  });

  bool get exchangeTradable;
  bool get isResearch;
  int get kindCode;
  String get name;
  List<Product> get neededFor;
  List<Product> get producedFrom;
  Num get transportation;
}

enum ProductCategory {
  agriculture,
  food,
  construction,
  fashion,
  energy,
  electronics,
  automotive,
  aerospace,
  resources,
  research,
}
