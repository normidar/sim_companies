import 'package:sim_companies/sim_companies.dart';

class EnergyResearch extends Product {
  const EnergyResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  EnergyResearch.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(586.5);

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 30;

  @override
  String get name => 'EnergyResearch';

  @override
  List<Product> get neededFor => [
        
      ];

  @override
  List<Product> get producedFrom => [
        
      ];

  @override
  Num get transportation => d(0.0);
}
