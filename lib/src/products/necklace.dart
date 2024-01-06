import 'package:sim_companies/sim_companies.dart';

class Necklace extends Product {
  const Necklace({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Necklace.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 71;

  @override
  String get name => 'Necklace';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        GoldenBars(quality: 0, quantity: d(0.25)),
      ];

  @override
  Num get transportation => d(1.0);
}
