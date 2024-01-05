import 'package:sim_companies/sim_companies.dart';

class SubOrbitalRocket extends Product {
  const SubOrbitalRocket({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  SubOrbitalRocket.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(759.0000000000001);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 91;

  @override
  String get name => 'SubOrbitalRocket';

  @override
  List<Product> get neededFor => [
        AerospaceResearch.one(),
      ];

  @override
  List<Product> get producedFrom => [
        SolidFuelBooster(quality: 0, quantity: d(1.0)),
        SubOrbital2ndStage(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(20.0);
}
