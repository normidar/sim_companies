import 'package:sim_companies/sim_companies.dart';

class Quadcopter extends Product {
  const Quadcopter({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Quadcopter.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 98;

  @override
  String get name => 'Quadcopter';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        OnBoardComputer(quality: 0, quantity: d(1.0)),
        Batteries(quality: 0, quantity: d(1.0)),
        ElectronicComponents(quality: 0, quantity: d(3.0)),
        Plastic(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
