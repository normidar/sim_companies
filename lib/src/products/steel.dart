import 'package:sim_companies/sim_companies.dart';

class Steel extends Product {
  const Steel({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Steel.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 43;

  @override
  String get name => 'Steel';

  @override
  List<Product> get neededFor => [
        ElectricMotor.one(),
        CarBody.one(),
        CombustionEngine.one(),
        Truck.one(),
        Bulldozer.one(),
        AttitudeControl.one(),
        RocketEngine.one(),
        HeatShield.one(),
        ReinforcedConcrete.one(),
        SteelBeams.one(),
        Tools.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(5.0)),
        IronOre(quality: 0, quantity: d(1.0)),
        Chemicals(quality: 0, quantity: d(0.1)),
      ];

  @override
  Num get transportation => d(1.0);
}
