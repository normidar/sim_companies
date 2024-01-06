import 'package:sim_companies/sim_companies.dart';

class Lasagna extends Product {
  const Lasagna({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Lasagna.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 130;

  @override
  String get name => 'Lasagna';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Steak(quality: 0, quantity: d(1.0)),
        Cheese(quality: 0, quantity: d(0.5)),
        Pasta(quality: 0, quantity: d(1.0)),
        Sauce(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
