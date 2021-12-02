import 'package:hive/hive.dart';

part 'hive_weekly.g.dart';

@HiveType(typeId: 2)
class WeeklyDBModel {
  @HiveField(0)
  String title;
  @HiveField(1)
  int amount;
  @HiveField(2)
  DateTime creationDate;
  @HiveField(3)
  int priority;
  @HiveField(4)
  DateTime? deadline;
  @HiveField(5)
  String category;

  WeeklyDBModel(
      {required this.title,
      this.amount = 0,
      required this.creationDate,
      this.priority = 0,
      this.category = "",
      this.deadline});
}
