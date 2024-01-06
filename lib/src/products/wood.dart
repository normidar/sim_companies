import 'package:sim_companies/sim_companies.dart';

class Wood extends Product {
  const Wood({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Wood.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 106;

  @override
  String get name => 'Wood';

  @override
  List<Product> get neededFor => [
        Planks.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Water(quality: 0, quantity: d(4.0)),
        Seeds(quality: 0, quantity: d(1.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
