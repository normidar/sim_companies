import 'package:sim_companies/sim_companies.dart';

class LuxuryECar extends Product {
  const LuxuryECar({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  LuxuryECar.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 54;

  @override
  String get name => 'LuxuryECar';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        ElectricMotor(quality: 0, quantity: d(4.0)),
        LuxuryCarInterior(quality: 0, quantity: d(1.0)),
        CarBody(quality: 0, quantity: d(1.0)),
        Batteries(quality: 0, quantity: d(30.0)),
        OnBoardComputer(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
