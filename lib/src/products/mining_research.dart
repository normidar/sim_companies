import 'package:sim_companies/sim_companies.dart';

class MiningResearch extends Product {
  const MiningResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  MiningResearch.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 31;

  @override
  String get name => 'MiningResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
