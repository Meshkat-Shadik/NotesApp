class NotesModel {
  String? noteId;
  String noteTitle;
  String noteDescription;
  DateTime? createdDateTime;
  DateTime? updatedDateTime;
  NotesModel({
    this.noteId,
    required this.noteTitle,
    required this.noteDescription,
    this.createdDateTime,
    this.updatedDateTime,
  });
}
