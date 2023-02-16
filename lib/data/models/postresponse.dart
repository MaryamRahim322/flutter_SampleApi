// To parse this JSON data, do
//
//     final propertieseResponser = propertieseResponserFromJson(jsonString);

import 'dart:convert';

List<PropertieseResponser> propertieseResponserFromJson(String str) =>
    List<PropertieseResponser>.from(
        json.decode(str).map((x) => PropertieseResponser.fromJson(x)));

String propertieseResponserToJson(List<PropertieseResponser> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PropertieseResponser {
  PropertieseResponser({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory PropertieseResponser.fromJson(Map<String, dynamic> json) =>
      PropertieseResponser(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
