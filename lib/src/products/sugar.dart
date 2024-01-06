import 'package:sim_companies/sim_companies.dart';

class Sugar extends Product {
  const Sugar({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Sugar.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 135;

  @override
  String get name => 'Sugar';

  @override
  List<Product> get neededFor => [
        ApplePie.one(),
        OrangeJuice.one(),
        GingerBeer.one(),
        Chocolate.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Sugarcane(quality: 0, quantity: d(1.0)),
        Power(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
