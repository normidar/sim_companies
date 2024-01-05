import 'package:sim_companies/sim_companies.dart';

class Recipes extends Product {
  const Recipes({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Recipes.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(517.5);

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 145;

  @override
  String get name => 'Recipes';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
