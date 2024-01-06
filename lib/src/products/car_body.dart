import 'package:sim_companies/sim_companies.dart';

class CarBody extends Product {
  const CarBody({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  CarBody.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 51;

  @override
  String get name => 'CarBody';

  @override
  List<Product> get neededFor => [
        EconomyECar.one(),
        LuxuryECar.one(),
        EconomyCar.one(),
        LuxuryCar.one(),
        Truck.one(),
        Bulldozer.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Aluminium(quality: 0, quantity: d(30.0)),
        Glass(quality: 0, quantity: d(5.0)),
        Steel(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
