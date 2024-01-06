import 'package:sim_companies/sim_companies.dart';

class Minerals extends Product {
  const Minerals({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Minerals.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 14;

  @override
  String get name => 'Minerals';

  @override
  List<Product> get neededFor => [
        Chemicals.one(),
        XmasOrnament.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(20.0)),
        Water(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
