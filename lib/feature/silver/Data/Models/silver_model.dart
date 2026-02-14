class SilverModel {
  final String name;
  final String symobl;
  final num price;
  final String updatedAt;
  final String updatedAtReadable;

  SilverModel({
    required this.name,
    required this.symobl,
    required this.price,
    required this.updatedAt,
    required this.updatedAtReadable,
  });
  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      symobl: json['symobl'],
      price: json['price'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
