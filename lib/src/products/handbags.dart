import 'package:sim_companies/sim_companies.dart';

class Handbags extends Product {
  const Handbags({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Handbags.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 64;

  @override
  String get name => 'Handbags';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Leather(quality: 0, quantity: d(1.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
