import 'package:sim_companies/sim_companies.dart';

class IronOre extends Product {
  const IronOre({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  IronOre.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 42;

  @override
  String get name => 'IronOre';

  @override
  List<Product> get neededFor => [
        Steel.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(7.0)),
        Water(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
