import 'package:sim_companies/sim_companies.dart';

class ElectronicComponents extends Product {
  const ElectronicComponents({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ElectronicComponents.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 21;

  @override
  String get name => 'ElectronicComponents';

  @override
  List<Product> get neededFor => [
        SmartPhones.one(),
        Tablets.one(),
        Laptops.one(),
        Monitors.one(),
        Televisions.one(),
        OnBoardComputer.one(),
        ElectricMotor.one(),
        CombustionEngine.one(),
        LuxuryWatch.one(),
        Quadcopter.one(),
        Tools.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Silicon(quality: 0, quantity: d(3.0)),
        Chemicals(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
