import 'package:sim_companies/sim_companies.dart';

class Bulldozer extends Product {
  const Bulldozer({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Bulldozer.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 112;

  @override
  String get name => 'Bulldozer';

  @override
  List<Product> get neededFor => [
        ConstructionUnits.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(4.0)),
        CarBody(quality: 0, quantity: d(1.0)),
        CombustionEngine(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
