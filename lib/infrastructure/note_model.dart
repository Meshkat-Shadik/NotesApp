// To parse this JSON data, do
//
//     final notesModel = notesModelFromJson(jsonString);
//
// factory NotesModel.fromJson(Map<String, dynamic> json) => NotesModel(
//       data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//     );

import 'dart:convert';

NotesModel notesModelFromJson(String str) =>
    NotesModel.fromJson(json.decode(str));

String notesModelToJson(NotesModel data) => json.encode(data.toJson());

class NotesModel {
  NotesModel({
    this.data,
  });

  List<Datum>? data;

  factory NotesModel.fromJson(Map<String, dynamic> json) => NotesModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

Datum datumFromJson(String str) => Datum.fromJson(json.decode(str));

String datumToJson(Datum data) => json.encode(data.toJson());

class Datum {
  Datum({
    this.createdTime,
    this.id,
    this.title,
    this.description,
    this.updatedTime,
  });

  DateTime? createdTime;
  String? id;
  String? title;
  String? description;
  DateTime? updatedTime;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        createdTime: DateTime.parse(json["createdTime"]),
        id: json["_id"],
        title: json["title"],
        description: json["description"],
        updatedTime: DateTime.parse(json["updatedTime"]),
      );

  Map<String, dynamic> toJson() => {
        "createdTime": createdTime?.toIso8601String() ?? updatedTime,
        "_id": id,
        "title": title,
        "description": description,
        "updatedTime": updatedTime?.toIso8601String(),
      };
}

ResponseModel responseModelFromJson(String str) =>
    ResponseModel.fromJson(json.decode(str));

String responseModelToJson(ResponseModel data) => json.encode(data.toJson());

class ResponseModel {
  ResponseModel({
    this.message,
  });

  String? message;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
