import 'dart:convert';

import 'package:lista_de_tarefas/model/todo_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ToDoController {
  List<ToDoModel> taskLists = [];

  void addTask (String title){
    final newTask = ToDoModel(title: title);
    taskLists.add(newTask);
    saveTaskToStorage();
  }

  void toggleTaskStatus(int index){
    taskLists[index].isCompleted = !taskLists[index].isCompleted;
    saveTaskToStorage();
  }

  void deleteTask(int index){
    taskLists.removeAt(index);
    saveTaskToStorage();
  }
  
  Future<void> saveTaskToStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final taskJson = taskLists.map((task) => task.toJson()).toList();
    await prefs.setString('task', jsonEncode(taskJson));
  }

  Future<void>readTasksFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final taskString = prefs.getString('task');
    if (taskString != null){
      final List decodedTasks = jsonDecode(taskString);
      taskLists = decodedTasks.map((taskData) => ToDoModel.fromJson(taskData)).toList();
    }
  }
}
