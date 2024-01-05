import 'package:sim_companies/sim_companies.dart';

class SmartPhones extends Product {
  const SmartPhones({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  SmartPhones.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(379.50000000000006);

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 24;

  @override
  String get name => 'SmartPhones';

  @override
  List<Product> get neededFor => [
        
      ];

  @override
  List<Product> get producedFrom => [
        Processors(quality: 0, quantity: d(2.0)),
ElectronicComponents(quality: 0, quantity: d(1.0)),
Batteries(quality: 0, quantity: d(1.0)),
Displays(quality: 0, quantity: d(1.0)),
Aluminium(quality: 0, quantity: d(2.0)),

      ];

  @override
  Num get transportation => d(2.0);
}
