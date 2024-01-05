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
        Eggs.one(),
        Flour.one(),
        Fodder.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(0.5)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.1);
}
