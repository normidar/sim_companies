import 'package:sim_companies/sim_companies.dart';

class Grain extends Product {
  const Grain({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Grain.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 6;

  @override
  String get name => 'Grain';

  @override
  List<Product> get neededFor => [
        Grain.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Grain.one(),
      ];

  @override
  Num get transportation => d(0.1);
}
