import 'package:sim_companies/sim_companies.dart';

class Seeds extends Product {
  const Seeds({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Seeds.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 66;

  @override
  String get name => 'Seeds';

  @override
  List<Product> get neededFor => [
        Apples.one(),
        Oranges.one(),
        Grapes.one(),
        Grain.one(),
        Sugarcane.one(),
        Cotton.one(),
        Wood.one(),
        CoffeeBeans.one(),
        Cocoa.one(),
        Vegetables.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(0.1)),
      ];

  @override
  Num get transportation => d(0.1);
}
