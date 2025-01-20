
import 'package:flutter/material.dart';
import 'package:lista_de_tarefas/controllers/todo_controllers.dart';
import 'package:lista_de_tarefas/styles/styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ToDoController _controller = ToDoController();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.readTasksFromStorage().then((_){
      setState(() {
        
      });
    });
  }
  void _onAddTask(){
    final text = _textController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _controller.addTask(text);
      });
      _textController.clear();
      Navigator.pop(context);
    }
  }

  void _toggleTaskStatus(int index){
    setState(() {
      _controller.toggleTaskStatus(index);
    });
  }

  void _removeTask(int index){
    setState(() {
      _controller.deleteTask(index);
    });
  }

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
        icon: Icon(Icons.add),
        label: const Text("task"),
        backgroundColor: AppColors.principal,
        foregroundColor: AppColors.foregroundColor,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: TextField(
                controller: _textController,
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
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: AppColors.cancel),
                        onPressed: () => Navigator.pop(context),
                        child: Icon(
                          Icons.cancel_outlined,
                          color: AppColors.cancel,
                        )),
                    ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(shadowColor: AppColors.save),
                      onPressed: _onAddTask,
                      child: Icon(
                        Icons.check,
                        color: AppColors.save,
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                      color: AppColors.lightGrey,
                    ),
                itemCount: _controller.taskLists.length,
                itemBuilder: (context, index) {

                  final task = _controller.taskLists[index];

                  return ListTile(
                    title: Text(
                      task.title,
                      style: TextStyle(
                        color: task.isCompleted? AppColors.lightGrey : AppColors.darkGrey
                      ),
                    ),

                    selected: false,
                    selectedTileColor: AppColors.secundary,
                    leading: Checkbox(
                        checkColor: AppColors.lightGrey,
                        activeColor: AppColors.darkGrey,
                        value: task.isCompleted,
                        onChanged: (_) => _toggleTaskStatus(index)),
                    trailing: IconButton(
                      onPressed: () => _removeTask(index), 
                      icon: Icon(Icons.delete, color: AppColors.cancel
                      ),
                    ),
                );
              }),
            ),
          ]),
    );
  }
}