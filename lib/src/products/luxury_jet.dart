import 'package:sim_companies/sim_companies.dart';

class LuxuryJet extends Product {
  const LuxuryJet({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  LuxuryJet.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => false;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 96;

  @override
  String get name => 'LuxuryJet';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Fuselage(quality: 0, quantity: d(14.0)),
        Wing(quality: 0, quantity: d(2.0)),
        Cockpit(quality: 0, quantity: d(1.0)),
        GoldenBars(quality: 0, quantity: d(2.0)),
        JetEngine(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1000.0);
}
