import 'package:flutter/material.dart';
import 'package:todoapp/utils/dialog_box_create.dart';
import 'package:todoapp/utils/home_screen_todo_main.dart';

import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  List<List<dynamic>> todoList = [];
  @override
  void initState() {
    super.initState();
    loadTodoList();
  }

  Future<void> saveTodoList() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('todos', jsonEncode(todoList));
  }

  Future<void> loadTodoList() async {
    final prefs = await SharedPreferences.getInstance();
    String? data = prefs.getString('todos');

    if (data != null) {
      setState(() {
        todoList = List<List<dynamic>>.from(
          jsonDecode(data).map((e) => List<dynamic>.from(e)),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Function to add a new task
    void addTask() {
      if (_controller.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Task cannot be empty!',
              style: TextStyle(fontSize: 16),
            ),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
        return; // stop execution here
      }

      setState(() {
        todoList.add([false, _controller.text]);
        _controller.clear();
      });
      saveTodoList();

      Navigator.of(context).pop();
    }

    // Function to show the dialog box for creating a new task
    void createNewTask() {
      showDialog(
        context: context,
        builder: (context) {
          return DialogBoxCreate(
            mycontroller: _controller,
            onSave: addTask,
            onCancel: () {
              Navigator.of(context).pop();
            },
          );
        },
      );
    }

    // Function to delete a task
    void deleteTask(int index) {
      setState(() {
        todoList.removeAt(index);
      });
    }

    // Function to handle checkbox value change
    void getCheckboxValue(bool? value, int index) {
      setState(() {
        todoList[index][0] = !todoList[index][0];
      });
      saveTodoList();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text('Todo App'),
      ),

      // Floating action button to add new tasks
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.add, color: Colors.black),
      ),

      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return HomeScreenTodoMain(
            title: todoList[index][1],
            checkvlaue: todoList[index][0],
            onChanged: (value) {
              getCheckboxValue(value, index);
            },
            icons: Icons.delete,
            onDelete: () => deleteTask(index),
          );
        },
      ),
    );
  }
}

//  required bool? value,
//   bool tristate = false,
//   required void Function(bool?)? onChanged,
