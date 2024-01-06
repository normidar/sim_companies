import 'package:sim_companies/sim_companies.dart';

class Batteries extends Product {
  const Batteries({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Batteries.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 22;

  @override
  String get name => 'Batteries';

  @override
  List<Product> get neededFor => [
        SmartPhones.one(),
        Tablets.one(),
        Laptops.one(),
        EconomyECar.one(),
        LuxuryECar.one(),
        AttitudeControl.one(),
        IonDrive.one(),
        Quadcopter.one(),
        Tools.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Chemicals(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
