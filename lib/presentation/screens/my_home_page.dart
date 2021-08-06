import 'package:flutter/material.dart';
import 'package:notes_app/infrastructure/note_model.dart';
import 'package:notes_app/presentation/screens/note_modify_page.dart';
import 'package:notes_app/presentation/widgets/remove_dialog.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final notes = [
    NotesModel(
      noteId: '1',
      noteTitle: 'Work',
      noteDescription: 'From 10 PM - 2 AM',
    ),
    NotesModel(
      noteId: '2',
      noteTitle: 'Sleep',
      noteDescription: 'From 2 AM - 12 PM',
    ),
    NotesModel(
      noteId: '3',
      noteTitle: 'Gossip',
      noteDescription: 'From 12:30 PM - 2:30 PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NoteModify()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(notes[index].noteId),
            background: Container(
              color: Colors.red,
              padding: EdgeInsets.only(left: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                context: context,
                builder: (context) => NoteDeleteDialog(),
              );
              return result;
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Text(notes[index].noteTitle[0]),
              ),
              title: Text(notes[index].noteTitle),
              subtitle: Text(notes[index].noteDescription),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NoteModify(
                        noteId: notes[index].noteId,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: notes.length,
      ),
    );
  }
}
