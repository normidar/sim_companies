import 'package:sim_companies/sim_companies.dart';

class VegetableOil extends Product {
  const VegetableOil({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  VegetableOil.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(379.50000000000006);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 141;

  @override
  String get name => 'VegetableOil';

  @override
  List<Product> get neededFor => [
        Hamburger.one(),
        MeatBalls.one(),
        Salad.one(),
        Samosa.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Vegetables(quality: 0, quantity: d(10.0)),
        Power(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
