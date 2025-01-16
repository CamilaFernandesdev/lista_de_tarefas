import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/styles/styles.dart';

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
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: AppColors.cancel
                ),
                  onPressed: () => Navigator.pop(context),
                  child: Icon(
                    Icons.cancel_outlined,
                    color: AppColors.cancel,
                  )),
              ElevatedButton(
                
                  style:  ElevatedButton.styleFrom(
                  shadowColor: AppColors.save
                ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.check, color: AppColors.save,))
            ]);
      });
}
