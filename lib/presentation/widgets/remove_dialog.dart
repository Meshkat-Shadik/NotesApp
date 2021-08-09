import 'package:flutter/material.dart';

class NoteDialog extends StatelessWidget {
  const NoteDialog({
    required this.title,
    required this.description,
    required this.widgets,
  });
  final String title;
  final String description;
  final List<Widget> widgets;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: widgets,
    );
  }
}
