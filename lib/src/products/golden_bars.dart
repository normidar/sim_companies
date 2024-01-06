import 'package:sim_companies/sim_companies.dart';

class GoldenBars extends Product {
  const GoldenBars({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  GoldenBars.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 69;

  @override
  String get name => 'GoldenBars';

  @override
  List<Product> get neededFor => [
        LuxuryWatch.one(),
        Necklace.one(),
        HighGradeEComps.one(),
        LuxuryJet.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(40.0)),
        GoldOre(quality: 0, quantity: d(200.0)),
      ];

  @override
  Num get transportation => d(1000.0);
}
