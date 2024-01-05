import 'package:sim_companies/sim_companies.dart';

class Sausages extends Product {
  const Sausages({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Sausages.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(414.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 8;

  @override
  String get name => 'Sausages';

  @override
  List<Product> get neededFor => [
        Sausages.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Sausages.one(),
      ];

  @override
  Num get transportation => d(0.1);
}