import 'package:flutter/material.dart';

void addTask(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Tarefa:"),
          content: TextField(
            decoration: InputDecoration(
              labelText: "Digite sua tarefa",
              labelStyle: TextStyle(
                color: Colors.grey
              )),
          ),
          icon: Icon(Icons.ac_unit),
        );
      });
}
