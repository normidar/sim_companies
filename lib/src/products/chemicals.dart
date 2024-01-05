import 'package:sim_companies/sim_companies.dart';

class Chemicals extends Product {
  const Chemicals({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Chemicals.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(414.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 17;

  @override
  String get name => 'Chemicals';

  @override
  List<Product> get neededFor => [
        Processors.one(),
ElectronicComponents.one(),
Batteries.one(),
Displays.one(),
Steel.one(),
CombustionEngine.one(),
HighGradeE-comps.one(),
SolidFuelBooster.one(),
IonDrive.one(),
XmasCrackers.one(),

      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(0.2)),
Minerals(quality: 0, quantity: d(1.0)),

      ];

  @override
  Num get transportation => d(1.0);
}
