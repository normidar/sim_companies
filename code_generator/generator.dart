import 'dart:io';

import 'package:dio/dio.dart';

import 'resource_data.dart';

void main() async {
  for (var i = 1; i < 10; i++) {
    final dio = Dio();
    // 1 ~ 145 kinds of resources
    final res = await dio.get<Map<String, dynamic>>(
        'https://www.simcompanies.com/api/v4/en/0/encyclopedia/resources/0/$i/');
    await Future.delayed(Duration(seconds: 1));
    final rd = ResourceData.fromJson(res.data!);
    // print(rd.neededFor[0].name);
    final name = rd.name;
    print(name);

    String needFor = '';
    for (int j = 0; j < rd.neededFor.length; j++) {
      needFor += '${rd.neededFor[j].name}.one(),\n';
    }

    String producedFrom = '';
    for (int j = 0; j < rd.producedFrom.length; j++) {
      producedFrom += '${rd.producedFrom[j].name}.one(),\n';
    }

    final tmp = '''import 'package:sim_companies/sim_companies.dart';

class $name extends Product {
  const $name({
    required Quantity quantity,
    required Quality quality,
  }) : super(
          quantity: quantity,
          quality: quality,
        );

  $name.one() : super(quality: 0, quantity: d(1));

  @override
  Money get baseSalary => d(${rd.baseSalary});

  @override
  bool get isResearch => ${rd.research};

  @override
  int get kindCode => $i;

  @override
  String get name => '$name';

  @override
  List<Product> get neededFor => [
        $needFor,
      ];

  @override
  List<Product> get producedFrom => [
        $producedFrom,
      ];

  @override
  Num get transportation => d(${rd.transportation});
}
''';

    final filename = 'lib/src/products/${name.toLowerCase()}.dart';
    await File(filename).writeAsString(tmp);
  }
}
