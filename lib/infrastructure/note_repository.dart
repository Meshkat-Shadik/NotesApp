import 'dart:convert';

import 'package:notes_app/infrastructure/api_response.dart';
import 'package:notes_app/infrastructure/note_model.dart';
import 'package:http/http.dart' as http;

abstract class BaseNotesRepository {
  Future<APIResponse<NotesModel>> getNotesList();
  Future<APIResponse<NotesModel>> getNoteById(String id);
}

class NotesRepository extends BaseNotesRepository {
  final baseUrl = 'https://meshnotesapp.herokuapp.com/notes/';
  @override
  Future<APIResponse<NotesModel>> getNotesList() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        return APIResponse<NotesModel>(
          data: notesModelFromJson(
            response.body,
          ),
        );
      }
      return APIResponse<NotesModel>(
        error: true,
        errorMessage: 'Error occured!',
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<APIResponse<NotesModel>> getNoteById(String id) async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/$id'));
      if (response.statusCode == 200) {
        print(response.body);
        return APIResponse<NotesModel>(
          data: notesModelFromJson(
            response.body,
          ),
        );
        // final jsonData = json.decode(response.body);
        // print('Data = ' + Datum.fromJson(jsonData).toString());

        //return APIResponse<NotesModel>(data: notesModelFromJson(response.body));
      }
      return APIResponse<NotesModel>(
        error: true,
        errorMessage: 'Error occured!',
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
