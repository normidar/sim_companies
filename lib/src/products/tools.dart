import 'package:sim_companies/sim_companies.dart';

class Tools extends Product {
  const Tools({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Tools.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 110;

  @override
  String get name => 'Tools';

  @override
  List<Product> get neededFor => [
        ConstructionUnits.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steel(quality: 0, quantity: d(0.5)),
        Planks(quality: 0, quantity: d(0.5)),
        ElectronicComponents(quality: 0, quantity: d(1.0)),
        Batteries(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
