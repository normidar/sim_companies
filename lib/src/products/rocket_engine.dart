import 'package:sim_companies/sim_companies.dart';

class RocketEngine extends Product {
  const RocketEngine({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  RocketEngine.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 86;

  @override
  String get name => 'RocketEngine';

  @override
  List<Product> get neededFor => [
        OrbitalBooster.one(),
        Starship.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(20.0)),
        HighGradeEComps(quality: 0, quantity: d(8.0)),
        Aluminium(quality: 0, quantity: d(10.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
