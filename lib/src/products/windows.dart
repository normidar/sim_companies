import 'package:sim_companies/sim_companies.dart';

class Windows extends Product {
  const Windows({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Windows.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 109;

  @override
  String get name => 'Windows';

  @override
  List<Product> get neededFor => [
        ConstructionUnits.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Aluminium(quality: 0, quantity: d(2.0)),
        Glass(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
