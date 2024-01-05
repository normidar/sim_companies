import 'package:sim_companies/sim_companies.dart';

class Steak extends Product {
  const Steak({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Steak.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(414.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 7;

  @override
  String get name => 'Steak';

  @override
  List<Product> get neededFor => [
        Steak.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Steak.one(),
      ];

  @override
  Num get transportation => d(1.0);
}
