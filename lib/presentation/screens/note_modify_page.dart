import 'package:flutter/material.dart';
import 'package:notes_app/infrastructure/api_response.dart';
import 'package:notes_app/infrastructure/note_model.dart';
import 'package:notes_app/infrastructure/note_repository.dart';
import 'package:notes_app/presentation/widgets/remove_dialog.dart';

class NoteModify extends StatefulWidget {
  const NoteModify({this.noteId});

  final String? noteId;

  @override
  _NoteModifyState createState() => _NoteModifyState();
}

class _NoteModifyState extends State<NoteModify> {
  bool get isEditing => widget.noteId != null;
  late APIResponse<NotesModel> _apiResponse;
  late APIResponse<ResponseModel> _apiResponseSuccessOrError;
  late APIResponse<ResponseModel> _apiUpdateResponse;
  bool isLoading = true;

  void initState() {
    super.initState();

    if (widget.noteId != null) {
      Future.delayed(Duration.zero,
          () => _fetchNotes(widget.noteId ?? '61044289251542208452a1b2'));
    } else {
      isLoading = false;
    }
  }

  @override
  void dispose() {
    _titleController.clear();
    _descriptionController.clear();
    super.dispose();
  }

  void _fetchNotes(String id) async {
    setState(() {
      isLoading = true;
    });
    _apiResponse = await NotesRepository().getNoteById(id);
    print(_apiResponse.data);
    setState(() {
      _titleController.text = _apiResponse.data!.data!.single.title.toString();
      _descriptionController.text =
          _apiResponse.data!.data!.single.description.toString();
      isLoading = false;
    });
    // setState(() {});
  }

  void _createNotes(
      String title, String description, BuildContext parentContext) async {
    setState(() {
      isLoading = true;
    });
    final Datum noteBody = Datum(
      title: title,
      description: description,
      createdTime: DateTime.now(),
    );
    _apiResponseSuccessOrError = await NotesRepository().createNote(noteBody);
    if (_apiResponseSuccessOrError.data != null) {
      final result = await showDialog(
        context: context,
        builder: (context) => NoteDialog(
          title: 'Success',
          description: _apiResponseSuccessOrError.data!.message.toString(),
          widgets: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                Navigator.pop(parentContext);
              },
              child: Text('Ok'),
            ),
          ],
        ),
      );
      return result;
    }
    Navigator.pop(context);
  }

  void _updateNote(String id, String title, String description,
      BuildContext parentContext) async {
    setState(() {
      isLoading = true;
    });
    final Datum noteBody = Datum(
      title: title,
      description: description,
      createdTime: DateTime.now(),
    );
    _apiUpdateResponse = await NotesRepository().updateNote(id, noteBody);
    if (_apiUpdateResponse.data != null) {
      final result = await showDialog(
        context: context,
        builder: (context) => NoteDialog(
          title: 'Success',
          description: _apiUpdateResponse.data!.message.toString(),
          widgets: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
                Navigator.pop(parentContext);
              },
              child: Text('Ok'),
            ),
          ],
        ),
      );
      return result;
    }
    //Navigator.pop(context);
  }

  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? "Edit a note" : "Create a note"),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      hintText: 'Note Title',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: _descriptionController,
                    keyboardType: TextInputType.multiline,
                    minLines: 2,
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText: 'Note Description',
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!isEditing) {
                          _createNotes(_titleController.text.trim(),
                              _descriptionController.text.trim(), context);
                        } else {
                          _updateNote(
                              widget.noteId ?? '',
                              _titleController.text.trim(),
                              _descriptionController.text.trim(),
                              context);
                        }
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
