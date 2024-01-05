import 'package:sim_companies/sim_companies.dart';

class JetEngine extends Product {
  const JetEngine({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  JetEngine.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(621.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 89;

  @override
  String get name => 'JetEngine';

  @override
  List<Product> get neededFor => [
        JumboJet.one(),
        LuxuryJet.one(),
      ];

  @override
  List<Product> get producedFrom => [
        HighGradeEComps(quality: 0, quantity: d(4.0)),
        Aluminium(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
