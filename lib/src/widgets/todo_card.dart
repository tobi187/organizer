import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:organizer/src/models/hive_todo.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({Key? key, required this.todo}) : super(key: key);
  final TodoDBModel todo;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2,
        margin: const EdgeInsets.all(5.0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: GestureDetector(
          onTap: () {},
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: todo.title != null
                  ? Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(todo.title!,
                            style: GoogleFonts.roboto(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 15),
                        Text(todo.text, style: GoogleFonts.nunito(fontSize: 15))
                      ],
                    )
                  : Text(todo.text)),
        ));
  }
}
