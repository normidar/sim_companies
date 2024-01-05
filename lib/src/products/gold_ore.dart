import 'package:sim_companies/sim_companies.dart';

class GoldOre extends Product {
  const GoldOre({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  GoldOre.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(276.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 68;

  @override
  String get name => 'GoldOre';

  @override
  List<Product> get neededFor => [
        GoldenBars.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(80.0)),
        Water(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(10.0);
}
