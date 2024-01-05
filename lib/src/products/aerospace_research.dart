import 'package:sim_companies/sim_companies.dart';

class AerospaceResearch extends Product {
  const AerospaceResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  AerospaceResearch.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(517.5);

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 100;

  @override
  String get name => 'AerospaceResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        SubOrbitalRocket(quality: 0, quantity: d(1.0)),
        BFR(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.0);
}
