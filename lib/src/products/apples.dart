import 'package:sim_companies/sim_companies.dart';

class Apples extends Product {
  const Apples({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Apples.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 3;

  @override
  String get name => 'Apples';

  @override
  List<Product> get neededFor => [
        Apples.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Apples.one(),
      ];

  @override
  Num get transportation => d(1.0);
}
