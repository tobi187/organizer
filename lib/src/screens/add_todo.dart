import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:organizer/src/models/hive_todo.dart';
import 'package:organizer/src/screens/todos.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key, this.existingTodo}) : super(key: key);
  final TodoDBModel? existingTodo;
  static const routeName = "AddTodoScreen";

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  var todoBox = Hive.box<TodoDBModel>("todoBox");

  @override
  void initState() {
    super.initState();
    if (widget.existingTodo != null) {
      titleController.text = widget.existingTodo!.title!;
      textController.text = widget.existingTodo!.text;
    }
  }

  @override
  void dispose() {
    super.dispose();
    textController.dispose();
    titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () {
                      if (widget.existingTodo == null &&
                          textController.text.isNotEmpty) {
                        todoBox.add(TodoDBModel(
                            text: textController.text,
                            creationDate: DateTime.now(),
                            title: titleController.text.isNotEmpty
                                ? titleController.text
                                : null));
                      } else if (widget.existingTodo != null &&
                          textController.text.isNotEmpty) {
                        TodoDBModel currTodo = widget.existingTodo!;
                        currTodo.text = textController.text;
                        if (titleController.text.isNotEmpty) {
                          currTodo.title = titleController.text;
                        }
                        todoBox.put(currTodo.key, currTodo);
                      }
                      Navigator.restorablePushReplacementNamed(
                          context, ToDoScreen.routeName);
                    },
                    icon: const Icon(Icons.check),
                  )
                ],
              ),
            ),
            TextField(
              controller: titleController,
              style: GoogleFonts.novaSquare(
                  fontWeight: FontWeight.bold, fontSize: 20),
              decoration: const InputDecoration(
                  hintText: "Titel",
                  contentPadding: EdgeInsets.all(15),
                  border: InputBorder.none),
            ),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none),
                style: GoogleFonts.lato(fontSize: 30),
                autofocus: textController.text.isEmpty ? true : false,
                controller: textController,
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
