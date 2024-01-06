import 'package:sim_companies/sim_companies.dart';

void main() {
  final product = Samosa(quantity: d(103 * 8), quality: 2);
  final buyingTextGenerator = BuyingTextGenerator(product);
  final text = buyingTextGenerator.generateBuyingToProduct(
    format: "&imag q&qual &quanunit @-2%mp",
  );
  print(text);
}
