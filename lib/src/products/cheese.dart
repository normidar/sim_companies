import 'package:sim_companies/sim_companies.dart';

class Cheese extends Product {
  const Cheese({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cheese.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 122;

  @override
  String get name => 'Cheese';

  @override
  List<Product> get neededFor => [
        FrozenPizza.one(),
        Lasagna.one(),
        Salad.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Milk(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
