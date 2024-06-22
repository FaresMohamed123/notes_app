import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_buttomSheet.dart';
import 'package:notes_app/widgets/notes_List_view.dart';
import 'package:notes_app/widgets/notes_search.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Notsearch(
              title: 'Notes',
              icon:  Icon(
                Icons.search,
                size: 25,
              ),
            ),
            Expanded(child: NotesListView())
          ],
        ),
      ),
    );
  }
}
