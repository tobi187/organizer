// import 'package:hive/hive.dart';
// import 'package:organizer/src/models/todo_model.dart';
//
// class DataController {
//   static final DataController _instance = DataController._internal();
//   late List<TodoModel> todos;
//   late List<WeeklyTodoModel> weeklyTodos;
//   //List<String>? todoCategories;
//   factory DataController() {
//     return _instance;
//   }
//   DataController._internal();
//
//   Future<void> init() async {
//     var todos = await Hive.openBox("Todo");
//   }
// }
