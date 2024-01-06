import 'package:sim_companies/sim_companies.dart';

class Ethanol extends Product {
  const Ethanol({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Ethanol.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 73;

  @override
  String get name => 'Ethanol';

  @override
  List<Product> get neededFor => [
        Petrol.one(),
        Diesel.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(20.0)),
        Sugarcane(quality: 0, quantity: d(10.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
