import 'package:sim_companies/sim_companies.dart';

class IonDrive extends Product {
  const IonDrive({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  IonDrive.one() : super(quality: 0, quantity: d(1));

  @override
  bool get exchangeTradable => true;

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 88;

  @override
  String get name => 'IonDrive';

  @override
  List<Product> get neededFor => [
        SubOrbital2ndStage.one(),
        Satellite.one(),
      ];

  @override
  List<Product> get producedFrom => [
        HighGradeEComps(quality: 0, quantity: d(8.0)),
        Batteries(quality: 0, quantity: d(30.0)),
        Chemicals(quality: 0, quantity: d(15.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
