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
  Money get baseSalary => d(414.0);

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
Crude oil.one(),
Methane.one(),
Petrol.one(),
Diesel.one(),
Transport.one(),
Minerals.one(),
Bauxite.one(),
Gold ore.one(),
Silicon.one(),
Chemicals.one(),
Aluminium.one(),
Plastic.one(),
Golden bars.one(),
Fabric.one(),
Iron ore.one(),
Steel.one(),
Sand.one(),
Glass.one(),
Carbon fibers.one(),
Rocket fuel.one(),
Clay.one(),
Limestone.one(),
Steel beams.one(),
Vegetable oil.one(),
Sugar.one(),
,
      ];

  @override
  List<Product> get producedFrom => [
        ,
      ];

  @override
  Num get transportation => d(0.0);
}
