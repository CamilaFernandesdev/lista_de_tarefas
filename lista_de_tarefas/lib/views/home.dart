import 'package:flutter/material.dart';
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
    'varrer o quintal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        title: const Text("Lista de Tarefas"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 15,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
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
                  textColor: Colors.white,
                  selected: true,
                  selectedTileColor: Colors.grey[200],

                  );
                
              }
        ),
        )],
      ),
    );
  }
}
