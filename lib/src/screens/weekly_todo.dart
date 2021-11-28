import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:organizer/src/widgets/scaffold.dart';
import 'package:organizer/src/widgets/todo_card.dart';

class WeeklyTodoScreen extends StatelessWidget {
  WeeklyTodoScreen({Key? key}) : super(key: key);

  static const routeName = "WeeklyTodoScreen";

  final weeklyTodo = Hive.box("weeklyTodo");

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      name: "Weekly Todo's",
      body: ListView(
          children: weeklyTodo.values.map((e) => TodoCard(todo: e)).toList()),
    );
  }
}
