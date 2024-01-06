import 'package:sim_companies/sim_companies.dart';

class ApplePie extends Product {
  const ApplePie({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ApplePie.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 123;

  @override
  String get name => 'ApplePie';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Dough(quality: 0, quantity: d(1.0)),
        Apples(quality: 0, quantity: d(2.0)),
        Sugar(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
