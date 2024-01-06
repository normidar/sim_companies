import 'package:sim_companies/sim_companies.dart';

class BFR extends Product {
  const BFR({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  BFR.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => false;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 94;

  @override
  String get name => 'BFR';

  @override
  List<Product> get neededFor => [
        AerospaceResearch.one(),
      ];

  @override
  List<Product> get producedFrom => [
        OrbitalBooster(quality: 0, quantity: d(1.0)),
        Starship(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(2000.0);
}
