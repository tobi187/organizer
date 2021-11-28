import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:organizer/src/models/hive_todo.dart';
import 'package:organizer/src/screens/add_todo.dart';
import 'package:organizer/src/widgets/scaffold.dart';
import 'package:organizer/src/widgets/todo_card.dart';

class ToDoScreen extends StatelessWidget {
  ToDoScreen({Key? key}) : super(key: key);

  static const routeName = "TodoScreen";
  final todoBox = Hive.box<TodoDBModel>("todoBox");

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      name: "ToDo's",
      buttonTopRight: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.restorablePushNamed(context, AddTodo.routeName);
        },
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: todoBox.values.map((e) => TodoCard(todo: e)).toList(),
      ),
    );
  }
}
