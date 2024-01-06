import 'package:sim_companies/sim_companies.dart';

class Dress extends Product {
  const Dress({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Dress.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 62;

  @override
  String get name => 'Dress';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Fabric(quality: 0, quantity: d(3.0)),
        Plastic(quality: 0, quantity: d(0.5)),
      ];

  @override
  Num get transportation => d(1.0);
}
