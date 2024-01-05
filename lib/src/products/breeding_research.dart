import 'package:sim_companies/sim_companies.dart';

class BreedingResearch extends Product {
  const BreedingResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  BreedingResearch.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(414.0);

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 33;

  @override
  String get name => 'BreedingResearch';

  @override
  List<Product> get neededFor => [
        
      ];

  @override
  List<Product> get producedFrom => [
        
      ];

  @override
  Num get transportation => d(0.0);
}
