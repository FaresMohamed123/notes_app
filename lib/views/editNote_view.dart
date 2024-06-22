import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_TexField.dart';
import 'package:notes_app/widgets/notes_search.dart';

class EditnoteView extends StatelessWidget {
  const EditnoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              Notsearch(
                title: 'Edit Note',
                icon:  Icon(
                  Icons.check,
                  size: 25,
                ),
              ),
              CustomTexField(hintText: 'title'),
              SizedBox(
                height: 25,
              ),
              CustomTexField(
                hintText: 'Content',
                maxlines: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
