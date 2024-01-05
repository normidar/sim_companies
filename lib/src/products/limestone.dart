import 'package:sim_companies/sim_companies.dart';

class Limestone extends Product {
  const Limestone({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Limestone.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(276.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 105;

  @override
  String get name => 'Limestone';

  @override
  List<Product> get neededFor => [
        Cement.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
