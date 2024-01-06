import 'package:sim_companies/sim_companies.dart';

class SubOrbital2ndStage extends Product {
  const SubOrbital2ndStage({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  SubOrbital2ndStage.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 90;

  @override
  String get name => 'SubOrbital2ndStage';

  @override
  List<Product> get neededFor => [
        SubOrbitalRocket.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Fuselage(quality: 0, quantity: d(8.0)),
        PropellantTank(quality: 0, quantity: d(2.0)),
        FlightComputer(quality: 0, quantity: d(2.0)),
        IonDrive(quality: 0, quantity: d(4.0)),
        AttitudeControl(quality: 0, quantity: d(2.0)),
      ];

  @override
  Num get transportation => d(20.0);
}
