import 'package:flutter/material.dart';
import 'package:todoapp/utils/dialog_button.dart';

class DialogBoxCreate extends StatelessWidget {
  final mycontroller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBoxCreate({
    super.key,
    required this.mycontroller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[100],
      title: Center(
        child: Text(
          'Add New Task',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      content: Container(
        height: 300,
        child: Column(
          children: [
            TextField(
              maxLines: 3,
              controller: mycontroller,
              decoration: InputDecoration(
                hintText: 'Enter your task here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DialogButton(
                  buttonText: 'Cancel',
                  onPressed: onCancel,
                  color: Colors.red,
                ),
                SizedBox(width: 10),
                DialogButton(
                  buttonText: 'Add',
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
