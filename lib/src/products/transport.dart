import 'package:sim_companies/sim_companies.dart';

class Transport extends Product {
  const Transport({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  Transport.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 13;

  @override
  String get name => 'Transport';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Diesel(quality: 0, quantity: d(0.005)),
        Power(quality: 0, quantity: d(0.01)),
      ];

  @override
  Num get transportation => d(0.0);
}
