import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notest_view_body.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return  const NotestViewBody() ;
        });
  }
}
