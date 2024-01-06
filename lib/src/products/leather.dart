import 'package:sim_companies/sim_companies.dart';

class Leather extends Product {
  const Leather({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Leather.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 46;

  @override
  String get name => 'Leather';

  @override
  List<Product> get neededFor => [
        LuxuryCarInterior.one(),
        Gloves.one(),
        StilettoHeel.one(),
        Handbags.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Cows(quality: 0, quantity: d(0.125)),
      ];

  @override
  Num get transportation => d(1.0);
}
