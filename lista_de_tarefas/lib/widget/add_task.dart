import 'package:flutter/material.dart';

void addTask(context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.border_color_outlined),
                iconColor: Colors.grey,
                labelText: "Digite a tarefa",
                labelStyle: TextStyle(color: Colors.grey)),
          ),
          icon: Icon(Icons.burst_mode_rounded),
          iconColor: Colors.grey,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () => Navigator.pop(context), child: Icon(Icons.cancel_outlined)),
                ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Icon(Icons.check)),
              ],
            )
            
            
          ],
        );
      });
}
