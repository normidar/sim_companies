import 'package:sim_companies/sim_companies.dart';

class AutomotiveResearch extends Product {
  const AutomotiveResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  AutomotiveResearch.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(552.0);

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 58;

  @override
  String get name => 'AutomotiveResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
