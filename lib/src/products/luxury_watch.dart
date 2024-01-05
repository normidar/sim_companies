import 'package:sim_companies/sim_companies.dart';

class LuxuryWatch extends Product {
  const LuxuryWatch({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  LuxuryWatch.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(138.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 70;

  @override
  String get name => 'LuxuryWatch';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        GoldenBars(quality: 0, quantity: d(0.1)),
        ElectronicComponents(quality: 0, quantity: d(2.0)),
        Glass(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
