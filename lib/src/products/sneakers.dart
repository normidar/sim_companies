import 'package:sim_companies/sim_companies.dart';

class Sneakers extends Product {
  const Sneakers({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Sneakers.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 65;

  @override
  String get name => 'Sneakers';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Plastic(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
