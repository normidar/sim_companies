import 'package:sim_companies/sim_companies.dart';

class Underwear extends Product {
  const Underwear({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Underwear.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(138.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 60;

  @override
  String get name => 'Underwear';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Fabric(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
