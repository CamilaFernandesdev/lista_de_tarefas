
import 'dart:convert';
import 'dart:core';
import 'dart:io';

import 'package:lista_de_tarefas/model/todo_model.dart';
import 'package:path_provider/path_provider.dart';

class ToDoController {
  //CRUD
  List<ToDoModel> taskLists = [
    ToDoModel(title: 'teste', isCompleted: true),
    ToDoModel(title: 'teste2', isCompleted: true),
    ToDoModel(title: 'teste3'),

  ];

  get isCompleted => null;
    //add new tavoid> addTaDoModel newTask);

  // add task
  void addTask() {
      print("teste123");
    }

  void toggleTaskStatus(int index) {}

  void deleteTask(int index) {}

  }
  //status task
  // void toggleTaskStatus (int index) {
    
  //   taskLists[index].isCompleted = !taskLists[index].isCompleted;
  // }

  //update an existing todo
  Future<void> updateTask (int index) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }

   //update an existing todo
  Future<void> deleteTask (int index) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }
 
  Future <String> saveFile(taskLists) async {
      final Directory diretory = await getApplicationCacheDirectory();
      File file = File("${diretory.path}/data.json");
      String data = json.encode(taskLists);
      file.writeAsStringSync(data);
      return "";
  }



