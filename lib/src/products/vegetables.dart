import 'package:sim_companies/sim_companies.dart';

class Vegetables extends Product {
  const Vegetables({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Vegetables.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 120;

  @override
  String get name => 'Vegetables';

  @override
  List<Product> get neededFor => [
        Fodder.one(),
        GingerBeer.one(),
        VegetableOil.one(),
        FrozenPizza.one(),
        Sauce.one(),
        Hamburger.one(),
        Salad.one(),
        Samosa.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(2.0)),
        Seeds(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(0.2);
}
