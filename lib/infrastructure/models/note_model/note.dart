// To parse this JSON data, do
//
//     final note = noteFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'note.freezed.dart';
part 'note.g.dart';

Note noteFromJson(String str) => Note.fromJson(json.decode(str));

String noteToJson(Note data) => json.encode(data.toJson());

@freezed
abstract class Note with _$Note {
    const factory Note({
        @required List<Datum>? data,
    }) = _Note;

    factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
    const factory Datum({
        @required DateTime? createdTime,
        @required String? id,
        @required String? title,
        @required String? description,
        @required DateTime? updatedTime,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
