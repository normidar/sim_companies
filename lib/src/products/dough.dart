import 'package:sim_companies/sim_companies.dart';

class Dough extends Product {
  const Dough({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Dough.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 137;

  @override
  String get name => 'Dough';

  @override
  List<Product> get neededFor => [
        Bread.one(),
        ApplePie.one(),
        FrozenPizza.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Flour(quality: 0, quantity: d(2.0)),
        Eggs(quality: 0, quantity: d(1.0)),
        Butter(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
