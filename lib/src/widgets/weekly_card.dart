import 'package:flutter/material.dart';
import 'package:organizer/src/models/todo_model.dart';

class WeeklyCard extends StatelessWidget {
  const WeeklyCard({Key? key, required this.todo}) : super(key: key);

  final WeeklyTodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        child: ListTile(
          leading: Text(todo.amount.toString()),
          title: Text(todo.text),
          trailing: IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
