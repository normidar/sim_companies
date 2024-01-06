import 'package:sim_companies/sim_companies.dart';

class Planks extends Product {
  const Planks({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Planks.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 108;

  @override
  String get name => 'Planks';

  @override
  List<Product> get neededFor => [
        Tools.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Wood(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
