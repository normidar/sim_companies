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
      int needQ = product.quality - 1;
      if (needQ < 0) needQ = 0;

      rt += format
          .replaceAll(qualityFilter, needQ.toString())
          .replaceAll(imageFilter, ' :re-${p.kindCode}: ')
          .replaceAll(nameFilter, p.name)
          .replaceAll(
              quantityFilter, (p.quantity * product.quantity).toString());
      rt += '\n';
    }
    rt += footer;
    return rt;
  }
}
