// To parse this JSON data, do
//
//     final todosResponse = todosResponseFromJson(jsonString);

import 'dart:convert';

List<TodosResponse> todosResponseFromJson(String str) =>
    List<TodosResponse>.from(
        json.decode(str).map((x) => TodosResponse.fromJson(x)));

String todosResponseToJson(List<TodosResponse> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TodosResponse {
  TodosResponse({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int? userId;
  int? id;
  String? title;
  bool? completed;

  factory TodosResponse.fromJson(Map<String, dynamic> json) => TodosResponse(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
      };
}
