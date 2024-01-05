import 'package:sim_companies/sim_companies.dart';

class Cockpit extends Product {
  const Cockpit({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cockpit.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(724.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 81;

  @override
  String get name => 'Cockpit';

  @override
  List<Product> get neededFor => [
        Starship.one(),
        JumboJet.one(),
        LuxuryJet.one(),
        SingleEnginePlane.one(),
      ];

  @override
  List<Product> get producedFrom => [
        HighGradeEComps(quality: 0, quantity: d(4.0)),
        Displays(quality: 0, quantity: d(8.0)),
        BasicInterior(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
