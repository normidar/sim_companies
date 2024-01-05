import 'package:sim_companies/sim_companies.dart';

class SingleEnginePlane extends Product {
  const SingleEnginePlane({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  SingleEnginePlane.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(759.0000000000001);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 97;

  @override
  String get name => 'SingleEnginePlane';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Fuselage(quality: 0, quantity: d(8.0)),
        Wing(quality: 0, quantity: d(2.0)),
        Cockpit(quality: 0, quantity: d(1.0)),
        CombustionEngine(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(100.0);
}
