import 'package:sim_companies/sim_companies.dart';

class Gloves extends Product {
  const Gloves({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Gloves.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(138.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 61;

  @override
  String get name => 'Gloves';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Fabric(quality: 0, quantity: d(0.5)),
        Leather(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
