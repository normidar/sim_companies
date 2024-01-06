import 'package:sim_companies/sim_companies.dart';

class SolidFuelBooster extends Product {
  const SolidFuelBooster({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  SolidFuelBooster.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 85;

  @override
  String get name => 'SolidFuelBooster';

  @override
  List<Product> get neededFor => [
        SubOrbitalRocket.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Aluminium(quality: 0, quantity: d(30.0)),
        RocketFuel(quality: 0, quantity: d(100.0)),
        Chemicals(quality: 0, quantity: d(50.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
