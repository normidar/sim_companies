import 'package:sim_companies/sim_companies.dart';

class Oranges extends Product {
  const Oranges({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Oranges.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 4;

  @override
  String get name => 'Oranges';

  @override
  List<Product> get neededFor => [
        OrangeJuice.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(3.0)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
