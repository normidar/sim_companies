import 'package:sim_companies/sim_companies.dart';

class ReinforcedConcrete extends Product {
  const ReinforcedConcrete({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  ReinforcedConcrete.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => false;

  @override
  int get kindCode => 101;

  @override
  String get name => 'ReinforcedConcrete';

  @override
  List<Product> get neededFor => [];

  @override
  List<Product> get producedFrom => [
        Cement(quality: 0, quantity: d(15.0)),
        Sand(quality: 0, quantity: d(20.0)),
        Water(quality: 0, quantity: d(20.0)),
        Steel(quality: 0, quantity: d(5.0)),
      ];

  @override
  Num get transportation => d(10.0);
}
