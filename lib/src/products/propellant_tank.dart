import 'package:sim_companies/sim_companies.dart';

class PropellantTank extends Product {
  const PropellantTank({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  PropellantTank.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(586.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 84;

  @override
  String get name => 'PropellantTank';

  @override
  List<Product> get neededFor => [
        SubOrbital2ndStage.one(),
        OrbitalBooster.one(),
        Starship.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Aluminium(quality: 0, quantity: d(50.0)),
        RocketFuel(quality: 0, quantity: d(250.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
