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
        Dough.one(),
        Pasta.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(0.4)),
        Grain(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(0.1);
}
