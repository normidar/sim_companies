import 'package:sim_companies/sim_companies.dart';

class RocketFuel extends Product {
  const RocketFuel({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  RocketFuel.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 83;

  @override
  String get name => 'RocketFuel';

  @override
  List<Product> get neededFor => [
        PropellantTank.one(),
        SolidFuelBooster.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Methane(quality: 0, quantity: d(1.0)),
        Power(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
