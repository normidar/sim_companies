import 'package:sim_companies/sim_companies.dart';

class EconomyCar extends Product {
  const EconomyCar({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  EconomyCar.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 55;

  @override
  String get name => 'EconomyCar';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        CombustionEngine(quality: 0, quantity: d(1.0)),
        BasicInterior(quality: 0, quantity: d(1.0)),
        CarBody(quality: 0, quantity: d(1.0)),
        OnBoardComputer(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
