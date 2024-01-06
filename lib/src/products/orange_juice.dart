import 'package:sim_companies/sim_companies.dart';

class OrangeJuice extends Product {
  const OrangeJuice({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  OrangeJuice.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 124;

  @override
  String get name => 'OrangeJuice';

  @override
  List<Product> get neededFor => [
        Cocktails.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Oranges(quality: 0, quantity: d(5.0)),
        Sugar(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
