import 'package:sim_companies/sim_companies.dart';

class Samosa extends Product {
  const Samosa({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Samosa.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 143;

  @override
  String get name => 'Samosa';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Vegetables(quality: 0, quantity: d(5.0)),
        VegetableOil(quality: 0, quantity: d(1.0)),
        Flour(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
