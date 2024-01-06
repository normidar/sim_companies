import 'package:sim_companies/sim_companies.dart';

class Displays extends Product {
  const Displays({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Displays.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 23;

  @override
  String get name => 'Displays';

  @override
  List<Product> get neededFor => [
        SmartPhones.one(),
        Tablets.one(),
        Laptops.one(),
        Monitors.one(),
        Televisions.one(),
        LuxuryCarInterior.one(),
        BasicInterior.one(),
        Cockpit.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Silicon(quality: 0, quantity: d(5.0)),
        Chemicals(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
