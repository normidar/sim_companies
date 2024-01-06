import 'package:sim_companies/sim_companies.dart';

class Grapes extends Product {
  const Grapes({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Grapes.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 5;

  @override
  String get name => 'Grapes';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(4.0)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
