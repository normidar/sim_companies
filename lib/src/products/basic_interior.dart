import 'package:sim_companies/sim_companies.dart';

class BasicInterior extends Product {
  const BasicInterior({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  BasicInterior.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 50;

  @override
  String get name => 'BasicInterior';

  @override
  List<Product> get neededFor => [
        EconomyECar.one(),
        EconomyCar.one(),
        Truck.one(),
        Cockpit.one(),
        JumboJet.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Displays(quality: 0, quantity: d(2.0)),
        Plastic(quality: 0, quantity: d(2.0)),
        Fabric(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
