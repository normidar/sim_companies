import 'package:sim_companies/sim_companies.dart';

class LuxuryCar extends Product {
  const LuxuryCar({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  LuxuryCar.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 56;

  @override
  String get name => 'LuxuryCar';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        CombustionEngine(quality: 0, quantity: d(2.0)),
        LuxuryCarInterior(quality: 0, quantity: d(1.0)),
        CarBody(quality: 0, quantity: d(1.0)),
        OnBoardComputer(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
