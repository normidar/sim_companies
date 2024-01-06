import 'package:sim_companies/sim_companies.dart';

class SteelBeams extends Product {
  const SteelBeams({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  SteelBeams.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 107;

  @override
  String get name => 'SteelBeams';

  @override
  List<Product> get neededFor => [
        ConstructionUnits.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(1.0)),
        Power(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
