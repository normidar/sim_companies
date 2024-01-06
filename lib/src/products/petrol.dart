import 'package:sim_companies/sim_companies.dart';

class Petrol extends Product {
  const Petrol({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Petrol.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 11;

  @override
  String get name => 'Petrol';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(15.0)),
        CrudeOil(quality: 0, quantity: d(0.75)),
        Ethanol(quality: 0, quantity: d(0.25)),
      ];

  @override
  Num get transportation => d(1.0);
}
