import 'package:flutter/material.dart';
import 'package:notes_app/infrastructure/api_response.dart';
import 'package:notes_app/infrastructure/note_model.dart';
import 'package:notes_app/infrastructure/note_repository.dart';

class NoteModify extends StatefulWidget {
  const NoteModify({this.noteId});

  final String? noteId;

  @override
  _NoteModifyState createState() => _NoteModifyState();
}

class _NoteModifyState extends State<NoteModify> {
  bool get isEditing => widget.noteId != null;
  late APIResponse<NotesModel> _apiResponse;
  bool isLoading = true;

  void initState() {
    Future.delayed(Duration.zero,
        () => _fetchNotes(widget.noteId ?? '61044289251542208452a1b2'));

    super.initState();
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
                        Navigator.pop(context);
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
