import 'package:sim_companies/sim_companies.dart';

class Grapes extends Product {
  const Grapes({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Grapes.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 5;

  @override
  String get name => 'Grapes';

  @override
  List<Product> get neededFor => [
        Grapes.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Grapes.one(),
      ];

  @override
  Num get transportation => d(1.0);
}