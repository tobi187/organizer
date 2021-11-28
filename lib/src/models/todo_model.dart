class TodoModel {
  final int id;
  final String? title;
  final String text;
  final DateTime creationDate;
  final int priority;
  final DateTime? deadline;

  TodoModel(
      {this.title,
      required this.text,
      required this.creationDate,
      required this.id,
      this.priority = 0,
      this.deadline});
}

class WeeklyTodoModel {
  final int id;
  final int amount;
  final String text;
  final DateTime creationDate;
  final int priority;
  final DateTime? deadline;

  WeeklyTodoModel(
      {required this.text,
      required this.creationDate,
      required this.id,
      this.priority = 0,
      this.deadline,
      this.amount = 1});
}
