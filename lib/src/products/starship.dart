import 'package:sim_companies/sim_companies.dart';

class Starship extends Product {
  const Starship({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Starship.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => false;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 93;

  @override
  String get name => 'Starship';

  @override
  List<Product> get neededFor => [
        BFR.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Cockpit(quality: 0, quantity: d(2.0)),
        HeatShield(quality: 0, quantity: d(10.0)),
        AttitudeControl(quality: 0, quantity: d(4.0)),
        PropellantTank(quality: 0, quantity: d(6.0)),
        RocketEngine(quality: 0, quantity: d(7.0)),
      ];

  @override
  Num get transportation => d(100.0);
}
