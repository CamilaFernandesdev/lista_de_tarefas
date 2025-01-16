
import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/styles/styles.dart';
import 'package:lista_de_tarefas/widget/add_task.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final List _taskLists = [
    'ír ano mercado',
    'tarefa de casa',
    'vLavar louca'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.principal,
        foregroundColor: AppColors.foregroundColor,
        title: const Text("Lista de Tarefas"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 15,
        backgroundColor: AppColors.principal,
        foregroundColor: AppColors.foregroundColor,
        onPressed: () => addTask(context),
        icon: Icon(Icons.add),
        label: const Text("task"),
      ),

      //bottomNavigationBar: BottomNavigationBar(items: null),
      body: Column(
        children: [Expanded(
          child: ListView.builder(
              itemCount: _taskLists.length, 
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_taskLists[index]),
                  textColor: AppColors.darkGrey,
                  selected: false,
                  selectedTileColor: AppColors.secundary,
                  leading: Checkbox(
                    checkColor: AppColors.lightGrey,
                    activeColor: AppColors.darkGrey,
                    value: true, 
                    onChanged: (bool? value){}),
                  
                  );
                
              }
        ),
        
        ),
        ],
      ),
    );
  }
}
