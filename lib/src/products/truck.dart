import 'package:sim_companies/sim_companies.dart';

class Truck extends Product {
  const Truck({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Truck.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 57;

  @override
  String get name => 'Truck';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        CombustionEngine(quality: 0, quantity: d(6.0)),
        BasicInterior(quality: 0, quantity: d(1.0)),
        CarBody(quality: 0, quantity: d(1.0)),
        Steel(quality: 0, quantity: d(10.0)),
        OnBoardComputer(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
