import 'package:sim_companies/sim_companies.dart';

class Processors extends Product {
  const Processors({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Processors.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 20;

  @override
  String get name => 'Processors';

  @override
  List<Product> get neededFor => [
        SmartPhones.one(),
        Tablets.one(),
        Laptops.one(),
        Televisions.one(),
        Robots.one(),
        OnBoardComputer.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Silicon(quality: 0, quantity: d(4.0)),
        Chemicals(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
