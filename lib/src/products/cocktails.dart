import 'package:sim_companies/sim_companies.dart';

class Cocktails extends Product {
  const Cocktails({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cocktails.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 132;

  @override
  String get name => 'Cocktails';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        OrangeJuice(quality: 0, quantity: d(1.0)),
        AppleCider(quality: 0, quantity: d(1.0)),
        GingerBeer(quality: 0, quantity: d(2.0)),
        CoffeePowder(quality: 0, quantity: d(8.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
