import 'package:decimal/decimal.dart';

Decimal d(dynamic value) {
  if (value is Decimal) {
    return value;
  } else if (value is num) {
    return Decimal.parse(value.toString());
  } else if (value is String) {
    return Decimal.parse(value);
  } else {
    throw ArgumentError.value(value, 'value', 'Invalid decimal value');
  }
}

typedef Num = Decimal;
typedef Money = Decimal;
typedef Quality = int;
typedef Quantity = Decimal;
