import 'package:sim_companies/sim_companies.dart';

class Pasta extends Product {
  const Pasta({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Pasta.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(379.50000000000006);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 128;

  @override
  String get name => 'Pasta';

  @override
  List<Product> get neededFor => [
        Lasagna.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Flour(quality: 0, quantity: d(2.0)),
        Eggs(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
