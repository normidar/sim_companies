import 'package:sim_companies/sim_companies.dart';

class Hamburger extends Product {
  const Hamburger({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Hamburger.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(655.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 129;

  @override
  String get name => 'Hamburger';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Steak(quality: 0, quantity: d(4.0)),
        Vegetables(quality: 0, quantity: d(3.0)),
        Butter(quality: 0, quantity: d(1.0)),
        Bread(quality: 0, quantity: d(0.5)),
        VegetableOil(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(2.0);
}
