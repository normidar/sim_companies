import 'package:sim_companies/sim_companies.dart';

class ChemistryResearch extends Product {
  const ChemistryResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ChemistryResearch.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 34;

  @override
  String get name => 'ChemistryResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
