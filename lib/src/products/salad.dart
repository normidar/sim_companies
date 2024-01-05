import 'package:sim_companies/sim_companies.dart';

class Salad extends Product {
  const Salad({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Salad.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(655.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 142;

  @override
  String get name => 'Salad';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Vegetables(quality: 0, quantity: d(5.0)),
        VegetableOil(quality: 0, quantity: d(0.5)),
        Cheese(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
