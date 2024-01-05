import 'package:sim_companies/sim_companies.dart';

class XmasCrackers extends Product {
  const XmasCrackers({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  XmasCrackers.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(414.0);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 67;

  @override
  String get name => 'XmasCrackers';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Chemicals(quality: 0, quantity: d(0.5)),
        Plastic(quality: 0, quantity: d(0.1)),
      ];

  @override
  Num get transportation => d(0.5);
}
