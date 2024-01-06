import 'package:sim_companies/sim_companies.dart';

class Sand extends Product {
  const Sand({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Sand.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 44;

  @override
  String get name => 'Sand';

  @override
  List<Product> get neededFor => [
        Silicon.one(),
        ReinforcedConcrete.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
