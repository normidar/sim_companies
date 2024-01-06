import 'package:sim_companies/sim_companies.dart';

class Cows extends Product {
  const Cows({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cows.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 115;

  @override
  String get name => 'Cows';

  @override
  List<Product> get neededFor => [
        Steak.one(),
        Leather.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(16.0)),
        Fodder(quality: 0, quantity: d(12.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
