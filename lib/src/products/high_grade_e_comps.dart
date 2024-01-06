import 'package:sim_companies/sim_companies.dart';

class HighGradeEComps extends Product {
  const HighGradeEComps({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  HighGradeEComps.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 79;

  @override
  String get name => 'HighGradeEComps';

  @override
  List<Product> get neededFor => [
        FlightComputer.one(),
        Cockpit.one(),
        RocketEngine.one(),
        IonDrive.one(),
        JetEngine.one(),
        Satellite.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Silicon(quality: 0, quantity: d(4.0)),
        Chemicals(quality: 0, quantity: d(3.0)),
        GoldenBars(quality: 0, quantity: d(0.0625)),
      ];

  @override
  Num get transportation => d(1.0);
}
