import 'package:hive/hive.dart';

part 'hive_weekly.g.dart';

@HiveType(typeId: 2)
class WeeklyDBModel {
  @HiveField(1)
  String title;
  @HiveField()
}