import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_TexField.dart';
import 'package:notes_app/widgets/custom_button.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTexField(
                hintText: 'title',
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(height: 15),
              CustomTexField(
                hintText: 'Content',
                maxlines: 5,
                onSaved: (value) {
                  subtitle = value;
                },
              ),
              // Spacer(),
              CustomButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  }else{
                    autovalidateMode=AutovalidateMode.always;
                    setState(() {
                      
                    });
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
