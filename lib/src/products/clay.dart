import 'package:sim_companies/sim_companies.dart';

class Clay extends Product {
  const Clay({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Clay.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 104;

  @override
  String get name => 'Clay';

  @override
  List<Product> get neededFor => [
        Bricks.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Power(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
