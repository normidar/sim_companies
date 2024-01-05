class NeededFor {
  late final String name;
  late final String image;
  late final int dbLetter;
  late final double transportation;
  late final bool retailable;
  late final bool research;
  late final bool exchangeTradable;
  late final bool realmAvailable;
  NeededFor({
    required this.name,
    required this.image,
    required this.dbLetter,
    required this.transportation,
    required this.retailable,
    required this.research,
    required this.exchangeTradable,
    required this.realmAvailable,
  });

  NeededFor.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    dbLetter = json['db_letter'];
    transportation = json['transportation'];
    retailable = json['retailable'];
    research = json['research'];
    exchangeTradable = json['exchangeTradable'];
    realmAvailable = json['realmAvailable'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['db_letter'] = dbLetter;
    data['transportation'] = transportation;
    data['retailable'] = retailable;
    data['research'] = research;
    data['exchangeTradable'] = exchangeTradable;
    data['realmAvailable'] = realmAvailable;
    return data;
  }
}

class ProducedFrom {
  late final Resource resource;
  late final double amount;
  ProducedFrom({
    required this.resource,
    required this.amount,
  });

  ProducedFrom.fromJson(Map<String, dynamic> json) {
    resource = Resource.fromJson(json['resource']);
    amount = double.parse(json['amount'].toString());
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['resource'] = resource.toJson();
    data['amount'] = amount;
    return data;
  }
}

class Resource {
  late final String name;
  late final String image;
  late final int dbLetter;
  late final double transportation;
  late final bool retailable;
  late final bool research;
  late final bool exchangeTradable;
  late final bool realmAvailable;
  Resource({
    required this.name,
    required this.image,
    required this.dbLetter,
    required this.transportation,
    required this.retailable,
    required this.research,
    required this.exchangeTradable,
    required this.realmAvailable,
  });

  Resource.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    dbLetter = json['db_letter'];
    transportation = json['transportation'];
    retailable = json['retailable'];
    research = json['research'];
    exchangeTradable = json['exchangeTradable'];
    realmAvailable = json['realmAvailable'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['db_letter'] = dbLetter;
    data['transportation'] = transportation;
    data['retailable'] = retailable;
    data['research'] = research;
    data['exchangeTradable'] = exchangeTradable;
    data['realmAvailable'] = realmAvailable;
    return data;
  }
}

class ResourceData {
  late final String name;
  late final String image;
  late final int dbLetter;
  late final double transportation;
  late final bool retailable;
  late final bool research;
  late final bool exchangeTradable;
  late final bool realmAvailable;
  late final List<ProducedFrom> producedFrom;
  late final void soldAt;
  late final void soldAtRestaurant;
  late final String producedAt;
  late final List<NeededFor> neededFor;
  late final double transportNeeded;
  late final double producedAnHour;
  late final double baseSalary;
  late final void averageRetailPrice;
  late final void marketSaturation;
  late final void marketSaturationLabel;
  late final void storeBaseSalary;
  late final List<dynamic> retailData;
  late final List<dynamic> improvesQualityOf;
  ResourceData({
    required this.name,
    required this.image,
    required this.dbLetter,
    required this.transportation,
    required this.retailable,
    required this.research,
    required this.exchangeTradable,
    required this.realmAvailable,
    required this.producedFrom,
    this.soldAt,
    this.soldAtRestaurant,
    required this.producedAt,
    required this.neededFor,
    required this.transportNeeded,
    required this.producedAnHour,
    required this.baseSalary,
    this.averageRetailPrice,
    this.marketSaturation,
    this.marketSaturationLabel,
    this.storeBaseSalary,
    required this.retailData,
    required this.improvesQualityOf,
  });

  ResourceData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    dbLetter = json['db_letter'];
    transportation = json['transportation'];
    retailable = json['retailable'];
    research = json['research'];
    exchangeTradable = json['exchangeTradable'];
    realmAvailable = json['realmAvailable'];
    producedFrom = List.from(json['producedFrom'])
        .map((e) => ProducedFrom.fromJson(e))
        .toList();
    soldAt = null;
    soldAtRestaurant = null;
    producedAt = json['producedAt'];
    neededFor =
        List.from(json['neededFor']).map((e) => NeededFor.fromJson(e)).toList();
    transportNeeded = json['transportNeeded'];
    producedAnHour = json['producedAnHour'];
    baseSalary = json['baseSalary'];
    averageRetailPrice = null;
    marketSaturation = null;
    marketSaturationLabel = null;
    storeBaseSalary = null;
    retailData = List.castFrom<dynamic, dynamic>(json['retailData']);
    improvesQualityOf =
        List.castFrom<dynamic, dynamic>(json['improvesQualityOf']);
  }
}
