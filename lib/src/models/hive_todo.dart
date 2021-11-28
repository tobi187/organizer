import 'package:hive/hive.dart';

part 'hive_todo.g.dart';

@HiveType(typeId: 1)
class TodoDBModel extends HiveObject {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String text;
  @HiveField(2)
  DateTime creationDate;
  @HiveField(3)
  int priority;
  @HiveField(4)
  DateTime? deadline;
  @HiveField(5)
  String category;

  TodoDBModel(
      {required this.text,
      required this.creationDate,
      this.priority = 0,
      this.category = "",
      this.title,
      this.deadline});
}
