import 'package:sim_companies/sim_companies.dart';

class CrudeOil extends Product {
  const CrudeOil({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CrudeOil.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 10;

  @override
  String get name => 'CrudeOil';

  @override
  List<Product> get neededFor => [
        Petrol.one(),
        Diesel.one(),
        Plastic.one(),
        CarbonFibers.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(25.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
