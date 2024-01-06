import 'package:sim_companies/sim_companies.dart';

class XmasOrnament extends Product {
  const XmasOrnament({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  XmasOrnament.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 144;

  @override
  String get name => 'XmasOrnament';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Glass(quality: 0, quantity: d(0.5)),
        Minerals(quality: 0, quantity: d(0.25)),
        Aluminium(quality: 0, quantity: d(0.125)),
      ];

  @override
  Num get transportation => d(0.5);
}
