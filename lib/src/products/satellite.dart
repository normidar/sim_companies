import 'package:sim_companies/sim_companies.dart';

class Satellite extends Product {
  const Satellite({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Satellite.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => false;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 99;

  @override
  String get name => 'Satellite';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        FlightComputer(quality: 0, quantity: d(4.0)),
        IonDrive(quality: 0, quantity: d(1.0)),
        HighGradeEComps(quality: 0, quantity: d(8.0)),
        AttitudeControl(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(10.0);
}
