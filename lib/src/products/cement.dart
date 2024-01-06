import 'package:sim_companies/sim_companies.dart';

class Cement extends Product {
  const Cement({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cement.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 103;

  @override
  String get name => 'Cement';

  @override
  List<Product> get neededFor => [
        ReinforcedConcrete.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Limestone(quality: 0, quantity: d(3.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
