import 'package:sim_companies/sim_companies.dart';

class MeatBalls extends Product {
  const MeatBalls({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  MeatBalls.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 131;

  @override
  String get name => 'MeatBalls';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Sausages(quality: 0, quantity: d(2.0)),
        Bread(quality: 0, quantity: d(1.0)),
        Sauce(quality: 0, quantity: d(1.0)),
        VegetableOil(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(2.0);
}
