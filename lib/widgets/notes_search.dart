import 'package:flutter/material.dart';

class Notsearch extends StatelessWidget {
  const Notsearch({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30),
          ),
          const Spacer(),
          Card(
            color: const Color.fromARGB(255, 65, 63, 63),
            child: IconButton(
                onPressed: () {},
                icon: icon),
          ),
        ],
      ),
    );
  }
}
