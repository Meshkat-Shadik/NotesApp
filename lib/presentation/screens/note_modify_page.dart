import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  const NoteModify({this.noteId});

  final String? noteId;
  bool get isEditing => noteId != null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? "Edit a note" : "Create a note"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Note Title',
              ),
            ),
            SizedBox(height: 20),
            TextField(
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
