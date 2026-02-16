// To parse this JSON data, do
//
//     final cityResponse = cityResponseFromJson(jsonString);

import 'dart:convert';

AreaResponse areaResponseFromJson(String str) =>
    AreaResponse.fromJson(json.decode(str));

String areaResponseToJson(AreaResponse data) => json.encode(data.toJson());

class AreaResponse {
  AreaResponse({
    this.areas,
    this.success,
    this.status,
  });

  List<Area>? areas;
  bool? success;
  int? status;

  factory AreaResponse.fromJson(Map<String, dynamic> json) => AreaResponse(
    areas: List<Area>.from(json["data"].map((x) => Area.fromJson(x))),
    success: json["success"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(areas!.map((x) => x.toJson())),
    "success": success,
    "status": status,
  };
}

class Area {
  Area({
    this.id,
    this.city_id,
    this.name,
  });

  @override
  toString() => '$name';

  int? id;
  int? city_id;
  String? name;

  factory Area.fromJson(Map<String, dynamic> json) => Area(
    id: json["id"],
    city_id: json["city_id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "city_id": city_id,
    "name": name,
  };
}
