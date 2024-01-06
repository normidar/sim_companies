import 'package:sim_companies/sim_companies.dart';

void main() {
  final product = Samosa(quantity: d(103 * 8), quality: 2);
  final buyingTextGenerator = BuyingTextGenerator(product);
  final text = buyingTextGenerator.generateBuyingToProduct(
    header: 'Buying: 買: 买: @-2%mp',
    format: "&imag q&qual &quanunit",
  );
  print(text);
}
