import 'package:sim_companies/sim_companies.dart';

class Glass extends Product {
  const Glass({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Glass.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 45;

  @override
  String get name => 'Glass';

  @override
  List<Product> get neededFor => [
        CarBody.one(),
        LuxuryWatch.one(),
        Windows.one(),
        XmasOrnament.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(2.0)),
        Silicon(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
