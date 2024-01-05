import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Go to Kyoto", false],
      ["Enjoy New Year Holidays with family", false],
    ];
  }

  // load the data from database(key value pair)
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
