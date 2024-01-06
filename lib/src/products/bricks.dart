import 'package:sim_companies/sim_companies.dart';

class Bricks extends Product {
  const Bricks({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Bricks.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 102;

  @override
  String get name => 'Bricks';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Clay(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
