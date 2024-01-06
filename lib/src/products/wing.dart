import 'package:sim_companies/sim_companies.dart';

class Wing extends Product {
  const Wing({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Wing.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 78;

  @override
  String get name => 'Wing';

  @override
  List<Product> get neededFor => [
        JumboJet.one(),
        LuxuryJet.one(),
        SingleEnginePlane.one(),
      ];

  @override
  List<Product> get producedFrom => [
        CarbonComposite(quality: 0, quantity: d(30.0)),
        Aluminium(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(2.0);
}
