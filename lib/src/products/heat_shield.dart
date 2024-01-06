import 'package:sim_companies/sim_companies.dart';

class HeatShield extends Product {
  const HeatShield({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  HeatShield.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 87;

  @override
  String get name => 'HeatShield';

  @override
  List<Product> get neededFor => [
        Starship.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(20.0)),
        Silicon(quality: 0, quantity: d(30.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
