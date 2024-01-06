import 'package:sim_companies/sim_companies.dart';

class Butter extends Product {
  const Butter({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Butter.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 134;

  @override
  String get name => 'Butter';

  @override
  List<Product> get neededFor => [
        Dough.one(),
        Sauce.one(),
        Hamburger.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Milk(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
