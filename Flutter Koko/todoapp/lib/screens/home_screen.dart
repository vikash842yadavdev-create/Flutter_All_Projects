import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todoapp/util/dialog_box.dart';
import 'package:todoapp/util/todo_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  var box = Hive.box('todoBox');
  List todoList = [];

  // Initialize todoList from Hive box
  @override
  void initState() {
    super.initState();
    var data = box.get('TODOLIST');

    if (data != null) {
      todoList = List.from(data);
    } else {
      todoList = [];
    }
  }

  //checkbox tapped
  void checkTask(bool? value, int index) {
    setState(() {
      todoList[index][1] = !todoList[index][1];
      box.put('TODOLIST', todoList); // 🔥 update storage
    });
  }

  //save new todo
  void saveNewTodo() {
    setState(() {
      todoList.add([_controller.text, false]);
      box.put('TODOLIST', todoList);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //dialog box
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBoxCreate(
          controller: _controller,
          onSave: saveNewTodo,
          onCancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  //delete task
  void deleteFunction(int index) {
    setState(() {
      todoList.removeAt(index);
      box.put('TODOLIST', todoList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.yellow[300],
        title: const Text('TO DO APP'),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow[300],
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: todoList[index][0],
            taskCompleted: todoList[index][1],
            onChanged: (value) => checkTask(value, index),
            deleteTask: (context) => deleteFunction(index),
          );
        },
      ),
    );
  }
}
