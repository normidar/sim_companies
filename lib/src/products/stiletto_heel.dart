import 'package:sim_companies/sim_companies.dart';

class StilettoHeel extends Product {
  const StilettoHeel({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  StilettoHeel.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 63;

  @override
  String get name => 'StilettoHeel';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Leather(quality: 0, quantity: d(1.0)),
        Plastic(quality: 0, quantity: d(0.2)),
      ];

  @override
  Num get transportation => d(1.0);
}
