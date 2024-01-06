import 'package:sim_companies/sim_companies.dart';

class Sauce extends Product {
  const Sauce({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Sauce.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 138;

  @override
  String get name => 'Sauce';

  @override
  List<Product> get neededFor => [
        Lasagna.one(),
        MeatBalls.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Vegetables(quality: 0, quantity: d(2.0)),
        Butter(quality: 0, quantity: d(0.5)),
        Water(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(2.0);
}
