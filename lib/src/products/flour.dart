import 'package:sim_companies/sim_companies.dart';

class Flour extends Product {
  const Flour({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Flour.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 133;

  @override
  String get name => 'Flour';

  @override
  List<Product> get neededFor => [
        Dough.one(),
        Pasta.one(),
        Samosa.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Grain(quality: 0, quantity: d(15.0)),
      ];

  @override
  Num get transportation => d(0.1);
}
