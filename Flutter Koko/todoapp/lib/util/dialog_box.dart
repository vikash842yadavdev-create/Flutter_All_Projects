import 'package:flutter/material.dart';
import 'package:todoapp/util/buttons.dart';

class DialogBoxCreate extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBoxCreate({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[100],
      title: const Text(
        'Add New Task',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      content: Container(
        height: 320,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Enter your task here',
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //Cancel Button
                DialogButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                  color: Colors.red,
                ),
                const SizedBox(width: 20),
                //Add Button
                DialogButton(
                  text: 'Add',
                  onPressed: onSave,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
