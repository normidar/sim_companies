import 'package:sim_companies/sim_companies.dart';

class Fodder extends Product {
  const Fodder({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Fodder.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 139;

  @override
  String get name => 'Fodder';

  @override
  List<Product> get neededFor => [
        Cows.one(),
        Pigs.one(),
        Milk.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Vegetables(quality: 0, quantity: d(0.5)),
        Grain(quality: 0, quantity: d(10.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
