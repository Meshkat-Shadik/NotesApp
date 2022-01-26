import 'package:notes_app/infrastructure/models/model.dart';
import 'package:notes_app/infrastructure/repositories/base_repositories/base_note_repository.dart';

class NoteRepository implements BaseNotesRepository {
  final baseUrl = 'https://meshnotesapp.herokuapp.com/notes/';

  @override
  Future<Note> getNotesList() {
    // TODO: implement getNotesList
    throw UnimplementedError();
  }

  @override
  Future<Note> getNoteById(String id) {
    // TODO: implement getNoteById
    throw UnimplementedError();
  }

  @override
  Future<Note> createNote(Datum note) {
    // TODO: implement createNote
    throw UnimplementedError();
  }

  @override
  Future<Note> updateNote(String id, Datum note) {
    // TODO: implement updateNote
    throw UnimplementedError();
  }

  @override
  Future<Note> deleteNote(String id) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }
}
