import 'package:sim_companies/sim_companies.dart';

class Sugarcane extends Product {
  const Sugarcane({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Sugarcane.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 72;

  @override
  String get name => 'Sugarcane';

  @override
  List<Product> get neededFor => [
        Ethanol.one(),
        Sugar.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(3.0)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.1);
}
