import 'package:notes_app/infrastructure/api_response.dart';
import 'package:notes_app/infrastructure/note_model.dart';
import 'package:http/http.dart' as http;

abstract class BaseNotesRepository {
  Future<APIResponse<NotesModel>> getNotesList();
  Future<APIResponse<NotesModel>> getNoteById(String id);
  Future<APIResponse<ResponseModel>> createNote(Datum note);
  Future<APIResponse<ResponseModel>> updateNote(String id, Datum note);
  Future<APIResponse<ResponseModel>> deleteNote(String id);
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
        // print(response.body);
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
  Future<APIResponse<ResponseModel>> createNote(Datum note) async {
    try {
      final bodyValue = datumToJson(note);
      final response = await http.post(
        Uri.parse(baseUrl),
        body: bodyValue,
        headers: {'Content-Type': "application/json; charset=UTF-8"},
      );
      if (response.statusCode == 201) {
        return APIResponse<ResponseModel>(
            data: responseModelFromJson(response.body));
      }
      return APIResponse<ResponseModel>(
        error: true,
        errorMessage: 'Error occured!',
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<APIResponse<ResponseModel>> updateNote(String id, Datum note) async {
    try {
      final bodyValue = datumToJson(note);
      final response = await http.put(
        Uri.parse('$baseUrl/$id'),
        body: bodyValue,
        headers: {'Content-Type': "application/json; charset=UTF-8"},
      );
      if (response.statusCode == 200) {
        return APIResponse<ResponseModel>(
            data: responseModelFromJson(response.body));
      }
      return APIResponse<ResponseModel>(
        error: true,
        errorMessage: 'Error occured!',
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<APIResponse<ResponseModel>> deleteNote(String id) async {
    try {
      final response = await http.delete(Uri.parse('$baseUrl/$id'));
      if (response.statusCode == 200) {
        return APIResponse<ResponseModel>(
          data: responseModelFromJson(
            response.body,
          ),
        );
      }
      return APIResponse<ResponseModel>(
        error: true,
        errorMessage: 'Error occured!',
      );
    } catch (e) {
      throw Exception(e);
    }
  }
}
