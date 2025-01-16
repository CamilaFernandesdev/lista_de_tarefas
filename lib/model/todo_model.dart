import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class ToDoModel {
  String title;
  bool completed = false;


ToDoModel({
  required this.title,
  required this.completed,
});


Future <String> saveFile() async {
      final Directory diretory = await getApplicationCacheDirectory();
      File file = File("${diretory.path}/data.json");
      String data = json.encode('_taskLists');
      file.writeAsStringSync(data);
      return "";
  }

void addTask () {
    // Criar dados
  Map<String, dynamic> task = {};
  task["title"] = "Lavar louca";
  task["completed"] = false;
  
  // String data = json.encode();

}
}