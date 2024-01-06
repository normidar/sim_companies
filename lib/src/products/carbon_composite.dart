import 'package:sim_companies/sim_companies.dart';

class CarbonComposite extends Product {
  const CarbonComposite({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CarbonComposite.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 76;

  @override
  String get name => 'CarbonComposite';

  @override
  List<Product> get neededFor => [
        Fuselage.one(),
        Wing.one(),
      ];

  @override
  List<Product> get producedFrom => [
        CarbonFibers(quality: 0, quantity: d(8.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
