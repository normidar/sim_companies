import 'package:sim_companies/sim_companies.dart';

class Robots extends Product {
  const Robots({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Robots.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 114;

  @override
  String get name => 'Robots';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        ElectricMotor(quality: 0, quantity: d(1.0)),
        Processors(quality: 0, quantity: d(2.0)),
        Plastic(quality: 0, quantity: d(10.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
