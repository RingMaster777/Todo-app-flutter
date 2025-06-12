import 'package:hive/hive.dart';

class TodoDataBase {
  List toDoList = [];

  final _todoBox = Hive.box('todo_box');

  void createInitialData() {
    toDoList = [
      ["Video Tutorial", false],
      ["Read Book", false],
      ["Exercise", false],
    ];
  }

  void loadData() {
    toDoList = _todoBox.get("TODOLIST") ?? [];
  }

  void updateDataBase() {
    _todoBox.put("TODOLIST", toDoList);
  }
}
