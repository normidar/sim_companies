import 'package:sim_companies/sim_companies.dart';

class GingerBeer extends Product {
  const GingerBeer({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  GingerBeer.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 126;

  @override
  String get name => 'GingerBeer';

  @override
  List<Product> get neededFor => [
        Cocktails.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(1.0)),
        Vegetables(quality: 0, quantity: d(3.0)),
        Sugar(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
