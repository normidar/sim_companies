import 'package:sim_companies/sim_companies.dart';

class CoffeeBeans extends Product {
  const CoffeeBeans({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CoffeeBeans.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 118;

  @override
  String get name => 'CoffeeBeans';

  @override
  List<Product> get neededFor => [
        CoffeePowder.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(0.5)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.1);
}
