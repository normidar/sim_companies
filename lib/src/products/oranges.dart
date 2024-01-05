import 'package:sim_companies/sim_companies.dart';

class Oranges extends Product {
  const Oranges({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Oranges.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 4;

  @override
  String get name => 'Oranges';

  @override
  List<Product> get neededFor => [
        Oranges.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Oranges.one(),
      ];

  @override
  Num get transportation => d(1.0);
}
