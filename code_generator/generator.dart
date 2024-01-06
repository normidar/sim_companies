import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'resource_data.dart';

void main() async {
  await generateProductCodes();
}

/// generate dart files for products
Future generateProductCodes() async {
  final file = File('code_generator/products_info.json');
  final lst = jsonDecode(await file.readAsString()) as List<dynamic>;
  for (var i = 0; i < lst.length; i++) {
    final rd = ResourceData.fromJson(lst[i]);
    // print(rd.neededFor[0].name);
    final cName = toCString(rd.name);
    final fName =
        rd.name.split(RegExp(r'[ -]')).map((e) => e.toLowerCase()).join('_');
    print(cName);
    rd.dbLetter;

    String needFor = '';
    for (int j = 0; j < rd.neededFor.length; j++) {
      needFor += '${toCString(rd.neededFor[j].name)}.one(),\n';
    }

    String producedFrom = '';
    for (int j = 0; j < rd.producedFrom.length; j++) {
      producedFrom +=
          '${toCString(rd.producedFrom[j].resource.name)}(quality: 0, quantity: d(${rd.producedFrom[j].amount})),\n';
    }

    final tmp = '''import 'package:sim_companies/sim_companies.dart';

class $cName extends Product {
  const $cName({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  $cName.one() : super(quality: 0, quantity: d(1));

  @override
  bool get isResearch => ${rd.research};

  @override
  int get kindCode => ${rd.dbLetter};

  @override
  String get name => '$cName';

  @override
  List<Product> get neededFor => [
        $needFor
      ];

  @override
  List<Product> get producedFrom => [
        $producedFrom
      ];

  @override
  Num get transportation => d(${rd.transportation});
}
''';

    final filename = 'lib/src/products/$fName.dart';
    await File(filename).writeAsString(tmp);
  }
}

Future generateProductsInfoJsonFile() async {
  final lst = [];

  for (var i = 1; i < 146; i++) {
    if (i >= 36 && i <= 39) continue;
    try {
      final dio = Dio();
      // 1 ~ 145 kinds of resources
      final res = await dio.get<Map<String, dynamic>>(
          'https://www.simcompanies.com/api/v4/en/0/encyclopedia/resources/0/$i/');

      await Future.delayed(Duration(seconds: 1));
      print(i);
      lst.add(res.data!);
    } catch (_) {}
  }

  final filename = 'code_generator/products_info.json';
  await File(filename).writeAsString(jsonEncode(lst));
}

String toCString(String name) {
  return name
      .split(RegExp(r'[ -]'))
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join('');
}
