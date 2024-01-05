import 'package:sim_companies/sim_companies.dart';

class JumboJet extends Product {
  const JumboJet({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  JumboJet.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(759.0000000000001);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 95;

  @override
  String get name => 'JumboJet';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Fuselage(quality: 0, quantity: d(40.0)),
        Wing(quality: 0, quantity: d(10.0)),
        Cockpit(quality: 0, quantity: d(2.0)),
        BasicInterior(quality: 0, quantity: d(140.0)),
        JetEngine(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(2000.0);
}
