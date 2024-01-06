import 'package:sim_companies/sim_companies.dart';

class Diesel extends Product {
  const Diesel({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Diesel.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 12;

  @override
  String get name => 'Diesel';

  @override
  List<Product> get neededFor => [
        Transport.one(),
        ConstructionUnits.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(15.0)),
        CrudeOil(quality: 0, quantity: d(0.75)),
        Ethanol(quality: 0, quantity: d(0.25)),
      ];

  @override
  Num get transportation => d(1.0);
}
