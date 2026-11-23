import 'package:flutter/material.dart';

class Arithmaticelevatedbutton extends StatelessWidget {
  const Arithmaticelevatedbutton({
    super.key,
    required this.resultshow,
    required this.tasktoprform,
    required this.buttonText,
    required this.title,
    required this.homeController,
    required this.firstController,
    required this.secondController,
    required this.showResultDialog,
  });

  final String buttonText;
  final String title;
  final dynamic homeController;
  final TextEditingController firstController;
  final TextEditingController secondController;
  final Function(String, double) showResultDialog;
  final Function(String, String) tasktoprform;
  final String resultshow;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        tasktoprform(firstController.text, secondController.text);

        double finalresultShow;
        if (resultshow == 'addResult') {
          finalresultShow = homeController.addResult;
        } else if (resultshow == 'subResult') {
          finalresultShow = homeController.subResult;
        } else if (resultshow == 'modResult') {
          finalresultShow = homeController.modResult;
        } else if (resultshow == 'mulResult') {
          finalresultShow = homeController.mulResult;
        } else if (resultshow == 'divResult') {
          finalresultShow = homeController.divResult;
        } else {
          finalresultShow = 0.0;
        }

        showResultDialog(title, finalresultShow);
      },
      child: Text(buttonText),
    );
  }
}
