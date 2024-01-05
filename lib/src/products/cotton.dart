import 'package:sim_companies/sim_companies.dart';

class Cotton extends Product {
  const Cotton({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cotton.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 40;

  @override
  String get name => 'Cotton';

  @override
  List<Product> get neededFor => [
        Fabric.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(1.0)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.5);
}
