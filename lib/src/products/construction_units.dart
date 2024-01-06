import 'package:sim_companies/sim_companies.dart';

class ConstructionUnits extends Product {
  const ConstructionUnits({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ConstructionUnits.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 111;

  @override
  String get name => 'ConstructionUnits';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Bulldozer(quality: 0, quantity: d(0.125)),
        Diesel(quality: 0, quantity: d(5.0)),
        Windows(quality: 0, quantity: d(4.0)),
        SteelBeams(quality: 0, quantity: d(8.0)),
        Tools(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(0.0);
}
