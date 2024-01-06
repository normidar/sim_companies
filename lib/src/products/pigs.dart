import 'package:sim_companies/sim_companies.dart';

class Pigs extends Product {
  const Pigs({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Pigs.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 116;

  @override
  String get name => 'Pigs';

  @override
  List<Product> get neededFor => [
        Sausages.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(4.0)),
        Fodder(quality: 0, quantity: d(4.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
