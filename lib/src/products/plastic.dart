import 'package:sim_companies/sim_companies.dart';

class Plastic extends Product {
  const Plastic({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Plastic.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(482.99999999999994);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 19;

  @override
  String get name => 'Plastic';

  @override
  List<Product> get neededFor => [
        Laptops.one(),
Monitors.one(),
Televisions.one(),
Robots.one(),
BasicInterior.one(),
Dress.one(),
StilettoHeel.one(),
Sneakers.one(),
Quadcopter.one(),
XmasCrackers.one(),

      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(5.0)),
CrudeOil(quality: 0, quantity: d(0.2)),

      ];

  @override
  Num get transportation => d(1.0);
}
