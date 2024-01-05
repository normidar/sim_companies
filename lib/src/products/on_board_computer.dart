import 'package:sim_companies/sim_companies.dart';

class OnBoardComputer extends Product {
  const OnBoardComputer({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  OnBoardComputer.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(379.50000000000006);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 47;

  @override
  String get name => 'OnBoardComputer';

  @override
  List<Product> get neededFor => [
        EconomyECar.one(),
        LuxuryECar.one(),
        EconomyCar.one(),
        LuxuryCar.one(),
        Truck.one(),
        FlightComputer.one(),
        Quadcopter.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Processors(quality: 0, quantity: d(2.0)),
        ElectronicComponents(quality: 0, quantity: d(3.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
