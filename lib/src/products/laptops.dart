import 'package:sim_companies/sim_companies.dart';

class Laptops extends Product {
  const Laptops({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Laptops.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 26;

  @override
  String get name => 'Laptops';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Processors(quality: 0, quantity: d(4.0)),
        ElectronicComponents(quality: 0, quantity: d(3.0)),
        Batteries(quality: 0, quantity: d(2.0)),
        Displays(quality: 0, quantity: d(2.0)),
        Plastic(quality: 0, quantity: d(3.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
