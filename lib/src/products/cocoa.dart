import 'package:sim_companies/sim_companies.dart';

class Cocoa extends Product {
  const Cocoa({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Cocoa.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(103.5);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 136;

  @override
  String get name => 'Cocoa';

  @override
  List<Product> get neededFor => [
        Chocolate.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(1.0)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(0.1);
}
