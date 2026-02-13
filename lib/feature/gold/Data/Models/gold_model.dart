class GoldModel {
  final String name;
  final String symobl;
  final num price;
  final String updatedAt;
  final String updatedAtReadable;

  GoldModel({
    required this.name,
    required this.symobl,
    required this.price,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'],
      symobl: json['symobl'],
      price: json['price'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
