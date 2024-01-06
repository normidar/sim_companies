import 'package:sim_companies/sim_companies.dart';

class CoffeePowder extends Product {
  const CoffeePowder({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CoffeePowder.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 119;

  @override
  String get name => 'CoffeePowder';

  @override
  List<Product> get neededFor => [
        Cocktails.one(),
      ];

  @override
  List<Product> get producedFrom => [
        CoffeeBeans(quality: 0, quantity: d(10.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
