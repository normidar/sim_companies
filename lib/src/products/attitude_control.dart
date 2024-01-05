import 'package:sim_companies/sim_companies.dart';

class AttitudeControl extends Product {
  const AttitudeControl({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  AttitudeControl.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(724.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 82;

  @override
  String get name => 'AttitudeControl';

  @override
  List<Product> get neededFor => [
        SubOrbital2ndStage.one(),
        Starship.one(),
        Satellite.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(3.0)),
        Batteries(quality: 0, quantity: d(5.0)),
        ElectricMotor(quality: 0, quantity: d(3.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
