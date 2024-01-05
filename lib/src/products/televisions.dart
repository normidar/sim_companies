import 'package:sim_companies/sim_companies.dart';

class Televisions extends Product {
  const Televisions({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Televisions.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(379.50000000000006);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 28;

  @override
  String get name => 'Televisions';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Processors(quality: 0, quantity: d(1.0)),
        ElectronicComponents(quality: 0, quantity: d(4.0)),
        Displays(quality: 0, quantity: d(4.0)),
        Plastic(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
