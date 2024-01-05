import 'package:sim_companies/sim_companies.dart';

class Water extends Product {
  const Water({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Water.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(345.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 2;

  @override
  String get name => 'Water';

  @override
  List<Product> get neededFor => [
        Seeds.one(),
        Apples.one(),
        Oranges.one(),
        Grapes.one(),
        Grain.one(),
        Sugarcane.one(),
        Eggs.one(),
        Minerals.one(),
        Bauxite.one(),
        GoldOre.one(),
        Cotton.one(),
        IronOre.one(),
        ReinforcedConcrete.one(),
        Wood.one(),
        Cows.one(),
        Pigs.one(),
        CoffeeBeans.one(),
        Cocoa.one(),
        Vegetables.one(),
        Milk.one(),
        GingerBeer.one(),
        Sauce.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(0.2)),
      ];

  @override
  Num get transportation => d(0.0);
}
