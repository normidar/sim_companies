import 'package:sim_companies/sim_companies.dart';

class Fuselage extends Product {
  const Fuselage({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Fuselage.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(586.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 77;

  @override
  String get name => 'Fuselage';

  @override
  List<Product> get neededFor => [
        SubOrbital2ndStage.one(),
        OrbitalBooster.one(),
        JumboJet.one(),
        LuxuryJet.one(),
        SingleEnginePlane.one(),
      ];

  @override
  List<Product> get producedFrom => [
        CarbonComposite(quality: 0, quantity: d(40.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
