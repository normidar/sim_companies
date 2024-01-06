import 'package:sim_companies/sim_companies.dart';

class Fabric extends Product {
  const Fabric({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Fabric.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 41;

  @override
  String get name => 'Fabric';

  @override
  List<Product> get neededFor => [
        BasicInterior.one(),
        Underwear.one(),
        Gloves.one(),
        Dress.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Cotton(quality: 0, quantity: d(2.0)),
        Power(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.5);
}
