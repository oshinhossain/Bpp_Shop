class Autogenerated {

  int? id;
  String? divisionId;
  String? name;
  String? bnName;
  String? lat;
  String? long;
  String? createdAt;
  String? updatedAt;

  Autogenerated(
      {this.id,
      this.divisionId,
      this.name,
      this.bnName,
      this.lat,
      this.long,
      this.createdAt,
      this.updatedAt});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    divisionId = json['division_id'];
    name = json['name'];
    bnName = json['bn_name'];
    lat = json['lat'];
    long = json['long'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['division_id'] = this.divisionId;
    data['name'] = this.name;
    data['bn_name'] = this.bnName;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

// // To parse this JSON data, do
// //
// //     final jesonData = jesonDataFromJson(jsonString);
//
// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// JesonData jesonDataFromJson(String str) => JesonData.fromJson(json.decode(str));
//
// // String jesonDataToJson(JesonData data) => json.encode(data.toJson());
//
// class JesonData {
//   JesonData({
//     @required this.divisions,
//   });
//
//   List<Division> ?divisions;
//
//   factory JesonData.fromJson(Map<String, dynamic> json) => JesonData(
//     divisions: json["divisions"] == null ? null : List<Division>.from(json["divisions"].map((x) => Division.fromJson(x))),
//   );
//
//   // Map<String, dynamic> toJson() => {
//   //   "divisions": divisions == null ? null : List<dynamic>.from(divisions.map((x) => x.toJson())),
//   // };
// }
//
// class Division {
//   Division({
//     @required this.id,
//     @required this.name,
//     @required this.bnName,
//     @required this.lat,
//     @required this.long,
//   });
//
//   String ?id;
//   String ?name;
//   String ?bnName;
//   String ?lat;
//   String ?long;
//
//   factory Division.fromJson(Map<String, dynamic> json) => Division(
//     id: json["id"] == null ? null : json["id"],
//     name: json["name"] == null ? null : json["name"],
//     bnName: json["bn_name"] == null ? null : json["bn_name"],
//     lat: json["lat"] == null ? null : json["lat"],
//     long: json["long"] == null ? null : json["long"],
//   );
//
//   // Map<String, dynamic> toJson() => {
//   //   "id": id == null ? null : id,
//   //   "name": name == null ? null : name,
//   //   "bn_name": bnName == null ? null : bnName,
//   //   "lat": lat == null ? null : lat,
//   //   "long": long == null ? null : long,
//   // };
// }
