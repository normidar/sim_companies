import 'package:sim_companies/sim_companies.dart';

class AppleCider extends Product {
  const AppleCider({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  AppleCider.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 125;

  @override
  String get name => 'AppleCider';

  @override
  List<Product> get neededFor => [
        Cocktails.one(),
      ];

  @override
  List<Product> get producedFrom => [
        Apples(quality: 0, quantity: d(8.0)),
      ];

  @override
  Num get transportation => d(1.0);
}
