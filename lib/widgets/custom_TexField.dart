import 'package:flutter/material.dart';

class CustomTexField extends StatelessWidget {
  const CustomTexField({
    super.key,
    required this.hintText,
    this.maxlines = 1,
    this.onSaved,
  });
  final String hintText;
  final int maxlines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'field is required';
          } else {
            return null;
          }
        },
        maxLines: maxlines,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.cyan,
            ),
            border: const OutlineInputBorder()),
      ),
    );
  }
}
