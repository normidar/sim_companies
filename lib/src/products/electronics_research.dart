import 'package:sim_companies/sim_companies.dart';

class ElectronicsResearch extends Product {
  const ElectronicsResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ElectronicsResearch.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 32;

  @override
  String get name => 'ElectronicsResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
