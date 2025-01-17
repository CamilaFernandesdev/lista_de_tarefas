
import 'dart:convert';
import 'dart:io';

import 'package:lista_de_tarefas/model/todo_model.dart';
import 'package:path_provider/path_provider.dart';

class ToDoController {
  //CRUD
  List<ToDoModel> taskLists = [];
    //add new tavoid> addTaDoModel newTask);

  //get list of todos
  Future<List<ToDoModel>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  //status task
  void toggleTaskStatus (int index) {
    taskLists[index].isCompleted = !taskLists[index].isCompleted;
  }
  //update an existing todo
  Future<void> updateTask (int index) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }

   //update an existing todo
  Future<void> deleteTask (ToDoModel task) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }
 
  Future <String> saveFile() async {
      final Directory diretory = await getApplicationCacheDirectory();
      File file = File("${diretory.path}/data.json");
      String data = json.encode(taskLists);
      file.writeAsStringSync(data);
      return "";
  }

  }

