import 'package:sim_companies/sim_companies.dart';

class Silicon extends Product {
  const Silicon({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Silicon.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 16;

  @override
  String get name => 'Silicon';

  @override
  List<Product> get neededFor => [
        Processors.one(),
        ElectronicComponents.one(),
        Displays.one(),
        Glass.one(),
        HighGradeEComps.one(),
        HeatShield.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(3.0)),
        Sand(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
