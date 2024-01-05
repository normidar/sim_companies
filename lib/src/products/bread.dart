import 'package:sim_companies/sim_companies.dart';

class Bread extends Product {
  const Bread({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Bread.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 121;

  @override
  String get name => 'Bread';

  @override
  List<Product> get neededFor => [
        Hamburger.one(),
        MeatBalls.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Dough(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
