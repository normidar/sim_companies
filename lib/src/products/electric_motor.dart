import 'package:sim_companies/sim_companies.dart';

class ElectricMotor extends Product {
  const ElectricMotor({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ElectricMotor.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 48;

  @override
  String get name => 'ElectricMotor';

  @override
  List<Product> get neededFor => [
        Robots.one(),
        EconomyECar.one(),
        LuxuryECar.one(),
        AttitudeControl.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(2.0)),
        ElectronicComponents(quality: 0, quantity: d(3.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
