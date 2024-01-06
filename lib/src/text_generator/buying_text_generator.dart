import 'package:sim_companies/src/products/product.dart';

class BuyingTextGenerator {
  final Product product;
  const BuyingTextGenerator(this.product);

  String generateBuyingToProduct({
    required String format,
    String header = "Buying:",
    String qualityFilter = "&qual",
    String imageFilter = "&imag",
    String nameFilter = "&name",
    String quantityFilter = "&quan",
    String footer = "",
  }) {
    final need = product.producedFrom;
    String rt = "$header\n";
    for (var i = 0; i < need.length; i++) {
      final p = need[i];
      rt += format
          .replaceAll(qualityFilter, p.quality.toString())
          .replaceAll(imageFilter, ' :re-${p.kindCode}: ')
          .replaceAll(nameFilter, p.name)
          .replaceAll(quantityFilter, p.quantity.toString());
      rt += '\n';
    }
    rt += footer;
    return rt;
  }
}
