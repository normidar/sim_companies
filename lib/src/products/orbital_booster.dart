import 'package:sim_companies/sim_companies.dart';

class OrbitalBooster extends Product {
  const OrbitalBooster({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  OrbitalBooster.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => false;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 92;

  @override
  String get name => 'OrbitalBooster';

  @override
  List<Product> get neededFor => [
        BFR.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Fuselage(quality: 0, quantity: d(40.0)),
        PropellantTank(quality: 0, quantity: d(16.0)),
        RocketEngine(quality: 0, quantity: d(34.0)),
      ];

  @override
  Num get transportation => d(100.0);
}
