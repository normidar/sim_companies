import 'package:sim_companies/sim_companies.dart';

class Monitors extends Product {
  const Monitors({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Monitors.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 27;

  @override
  String get name => 'Monitors';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        ElectronicComponents(quality: 0, quantity: d(2.0)),
        Displays(quality: 0, quantity: d(3.0)),
        Plastic(quality: 0, quantity: d(3.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
