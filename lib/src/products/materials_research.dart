import 'package:sim_companies/sim_companies.dart';

class MaterialsResearch extends Product {
  const MaterialsResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  MaterialsResearch.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 113;

  @override
  String get name => 'MaterialsResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
