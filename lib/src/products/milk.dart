import 'package:sim_companies/sim_companies.dart';

class Milk extends Product {
  const Milk({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Milk.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 117;

  @override
  String get name => 'Milk';

  @override
  List<Product> get neededFor => [
        Butter.one(),
        Cheese.one(),
        Chocolate.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(2.0)),
        Fodder(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
