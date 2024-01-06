import 'package:sim_companies/sim_companies.dart';

class CombustionEngine extends Product {
  const CombustionEngine({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CombustionEngine.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 52;

  @override
  String get name => 'CombustionEngine';

  @override
  List<Product> get neededFor => [
        EconomyCar.one(),
        LuxuryCar.one(),
        Truck.one(),
        Bulldozer.one(),
        SingleEnginePlane.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(6.0)),
        Chemicals(quality: 0, quantity: d(5.0)),
        ElectronicComponents(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
