import 'package:sim_companies/sim_companies.dart';

class CarbonFibers extends Product {
  const CarbonFibers({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CarbonFibers.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 75;

  @override
  String get name => 'CarbonFibers';

  @override
  List<Product> get neededFor => [
        CarbonComposite.one(),
      ];

  @override
  List<Product> get producedFrom => [
        CrudeOil(quality: 0, quantity: d(0.1)),
        Power(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(0.1);
}
