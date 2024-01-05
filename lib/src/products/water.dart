import 'package:sim_companies/sim_companies.dart';

class Water extends Product {
  const Water({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Water.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(345.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 2;

  @override
  String get name => 'Water';

  @override
  List<Product> get neededFor => [
        Water.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water.one(),
      ];

  @override
  Num get transportation => d(0.0);
}
