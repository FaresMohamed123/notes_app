import 'package:flutter/material.dart';
import 'package:notes_app/views/editNote_view.dart';

class NotestViewBody extends StatelessWidget {
  const NotestViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditnoteView(),
                    ),
                  );
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(30),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            color: const Color(0xffFFCD7A),
            borderRadius: BorderRadius.circular(25)),
        child: Stack(
          children: [
            const Positioned(
              child: Text(
                'Flutter Tips',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 33,
                    color: Colors.black),
              ),
            ),
            const Positioned(
              top: 70,
              child: Text(
                'Build your Career with\nFares Mohamed',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 109, 107, 107)),
              ),
            ),
            Positioned(
              right: 0,
              top: 25,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                  )),
            ),
            const Positioned(
              right: 0,
              bottom: 0,
              child: Text(
                'May 21,2022',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 109, 107, 107)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
