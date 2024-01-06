import 'package:sim_companies/sim_companies.dart';

class Aluminium extends Product {
  const Aluminium({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Aluminium.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 18;

  @override
  String get name => 'Aluminium';

  @override
  List<Product> get neededFor => [
        SmartPhones.one(),
        Tablets.one(),
        LuxuryCarInterior.one(),
        CarBody.one(),
        Wing.one(),
        PropellantTank.one(),
        SolidFuelBooster.one(),
        RocketEngine.one(),
        JetEngine.one(),
        Windows.one(),
        XmasOrnament.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(15.0)),
        Bauxite(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
