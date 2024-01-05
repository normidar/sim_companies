import 'package:sim_companies/sim_companies.dart';

class FashionResearch extends Product {
  const FashionResearch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  FashionResearch.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 59;

  @override
  String get name => 'FashionResearch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
