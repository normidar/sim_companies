import 'package:sim_companies/sim_companies.dart';

class Power extends Product {
  const Power({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Power.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 1;

  @override
  String get name => 'Power';

  @override
  List<Product> get neededFor => [
        Water.one(),
        Ethanol.one(),
        CrudeOil.one(),
        Methane.one(),
        Petrol.one(),
        Diesel.one(),
        Transport.one(),
        Minerals.one(),
        Bauxite.one(),
        GoldOre.one(),
        Silicon.one(),
        Chemicals.one(),
        Aluminium.one(),
        Plastic.one(),
        GoldenBars.one(),
        Fabric.one(),
        IronOre.one(),
        Steel.one(),
        Sand.one(),
        Glass.one(),
        CarbonFibers.one(),
        RocketFuel.one(),
        Clay.one(),
        Limestone.one(),
        SteelBeams.one(),
        VegetableOil.one(),
        Sugar.one(),
      ];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
