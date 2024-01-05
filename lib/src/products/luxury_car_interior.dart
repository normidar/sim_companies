import 'package:sim_companies/sim_companies.dart';

class LuxuryCarInterior extends Product {
  const LuxuryCarInterior({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  LuxuryCarInterior.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 49;

  @override
  String get name => 'LuxuryCarInterior';

  @override
  List<Product> get neededFor => [
        LuxuryECar.one(),
        LuxuryCar.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Displays(quality: 0, quantity: d(6.0)),
        Aluminium(quality: 0, quantity: d(2.0)),
        Leather(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
