import 'package:sim_companies/sim_companies.dart';

class EconomyECar extends Product {
  const EconomyECar({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  EconomyECar.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(448.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 53;

  @override
  String get name => 'EconomyECar';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        ElectricMotor(quality: 0, quantity: d(2.0)),
        BasicInterior(quality: 0, quantity: d(1.0)),
        CarBody(quality: 0, quantity: d(1.0)),
        Batteries(quality: 0, quantity: d(15.0)),
        OnBoardComputer(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(5.0);
}
