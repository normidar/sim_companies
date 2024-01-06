import 'package:sim_companies/sim_companies.dart';

class Chocolate extends Product {
  const Chocolate({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Chocolate.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 140;

  @override
  String get name => 'Chocolate';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Cocoa(quality: 0, quantity: d(10.0)),
        Milk(quality: 0, quantity: d(0.5)),
        Sugar(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
