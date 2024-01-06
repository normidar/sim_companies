import 'package:sim_companies/sim_companies.dart';

class FrozenPizza extends Product {
  const FrozenPizza({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  FrozenPizza.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 127;

  @override
  String get name => 'FrozenPizza';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Dough(quality: 0, quantity: d(2.0)),
        Vegetables(quality: 0, quantity: d(2.0)),
        Cheese(quality: 0, quantity: d(1.0)),
        Sausages(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
