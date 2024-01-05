import 'package:sim_companies/sim_companies.dart';

class Eggs extends Product {
  const Eggs({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Eggs.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(138.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 9;

  @override
  String get name => 'Eggs';

  @override
  List<Product> get neededFor => [
        Eggs.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Eggs.one(),
      ];

  @override
  Num get transportation => d(0.1);
}
