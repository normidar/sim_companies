import 'package:sim_companies/sim_companies.dart';

class Software extends Product {
  const Software({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Software.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => true;

  @override
  int get kindCode => 35;

  @override
  String get name => 'Software';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [];

  @override
  Num get transportation => d(0.0);
}
