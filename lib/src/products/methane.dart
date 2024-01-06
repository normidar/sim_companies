import 'package:sim_companies/sim_companies.dart';

class Methane extends Product {
  const Methane({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Methane.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 74;

  @override
  String get name => 'Methane';

  @override
  List<Product> get neededFor => [
        RocketFuel.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(20.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
