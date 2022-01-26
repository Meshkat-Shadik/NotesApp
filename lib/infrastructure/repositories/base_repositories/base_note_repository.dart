import 'package:notes_app/infrastructure/models/model.dart';

abstract class BaseNotesRepository {
  Future<Note> getNotesList();
  Future<Note> getNoteById(String id);
  Future<Note> createNote(Datum note);
  Future<Note> updateNote(String id, Datum note);
  Future<Note> deleteNote(String id);
}
