import 'dart:convert';

DistrictResponse districtResponseFromJson(String str) =>
    DistrictResponse.fromJson(json.decode(str));

String areaResponseToJson(DistrictResponse data) => json.encode(data.toJson());

class DistrictResponse {
  DistrictResponse({
    this.cities,
    this.success,
    this.status,
  });

  List<District>? cities;
  bool? success;
  int? status;

  factory DistrictResponse.fromJson(Map<String, dynamic> json) => DistrictResponse(
    cities: List<District>.from(json["data"].map((x) => District.fromJson(x))),
    success: json["success"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(cities!.map((x) => x.toJson())),
    "success": success,
    "status": status,
  };
}

class District {
  District({
    this.id,
    this.state_id,
    this.name,
  });

  @override
  toString() => '$name';

  int? id;
  int? state_id;
  String? name;

  factory District.fromJson(Map<String, dynamic> json) => District(
    id: json["id"],
    state_id: json["state_id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "state_id": state_id,
    "name": name,
  };
}