import 'package:sim_companies/sim_companies.dart';

class Bauxite extends Product {
  const Bauxite({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Bauxite.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 15;

  @override
  String get name => 'Bauxite';

  @override
  List<Product> get neededFor => [
        Aluminium.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(14.0)),
        Water(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
