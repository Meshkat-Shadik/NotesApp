import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/infrastructure/api_response.dart';
import 'package:notes_app/infrastructure/note_model.dart';
import 'package:notes_app/infrastructure/note_repository.dart';
import 'package:notes_app/presentation/routes/router.gr.dart';
import 'package:notes_app/presentation/widgets/remove_dialog.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late APIResponse<NotesModel> _apiResponse;
  late APIResponse<ResponseModel> _apiDeleteResponse;
  bool isLoading = true;
  void initState() {
    _fetchNotes();
    super.initState();
  }

  void _fetchNotes() async {
    setState(() {
      isLoading = true;
    });
    _apiResponse = await NotesRepository().getNotesList();

    print(_apiResponse.data!.data!.length);
    setState(() {
      isLoading = false;
    });
    // setState(() {});
  }

  void _deleteNote(String id) async {
    setState(() {
      isLoading = true;
    });
    _apiDeleteResponse = await NotesRepository().deleteNote(id);
    if (_apiDeleteResponse.data != null) {
      final result = await showDialog(
        context: context,
        builder: (context) => NoteDialog(
          title: 'Deleted!!',
          description: _apiDeleteResponse.data!.message.toString(),
          widgets: [
            TextButton(
              onPressed: () {
                setState(() {
                  isLoading = false;
                });
                Navigator.of(context).pop();
                _fetchNotes();
              },
              child: Text('Ok'),
            ),
          ],
        ),
      );
      return result;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notes'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context)
              .push(NoteModifyRoute())
              .then((_) => _fetchNotes());
        },
        child: Icon(Icons.add),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : _apiResponse.data!.data!.length == 0
              ? Center(
                  child: Text(
                    'You have no notes!\n Please try to add a new note',
                    textAlign: TextAlign.center,
                  ),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: ValueKey(_apiResponse.data!.data![index].id),
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
                          builder: (context) => NoteDialog(
                            title: 'Warning',
                            description:
                                'Are you sure you want to delete this note?',
                            widgets: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(true);
                                },
                                child: Text('Yes'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                child: Text('No'),
                              ),
                            ],
                          ),
                        );
                        if (result) {
                          _deleteNote(_apiResponse.data!.data![index].id ?? '');
                        }
                        return false;
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          child:
                              Text(_apiResponse.data!.data![index].title![0]),
                        ),
                        title:
                            Text(_apiResponse.data!.data![index].title ?? ""),
                        subtitle: Text(
                            _apiResponse.data!.data![index].description ?? ""),
                        trailing: IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(
                                  NoteModifyRoute(
                                    noteId: _apiResponse.data!.data![index].id,
                                  ),
                                )
                                .then((_) => _fetchNotes());
                            ;
                          },
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: _apiResponse.data!.data!.length,
                ),
    );
  }
}
