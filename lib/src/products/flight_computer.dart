import 'package:sim_companies/sim_companies.dart';

class FlightComputer extends Product {
  const FlightComputer({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  FlightComputer.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(724.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 80;

  @override
  String get name => 'FlightComputer';

  @override
  List<Product> get neededFor => [
        SubOrbital2ndStage.one(),
        Satellite.one(),
      ];

  @override
  List<Product> get producedFrom => [
        HighGradeEComps(quality: 0, quantity: d(4.0)),
        OnBoardComputer(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
