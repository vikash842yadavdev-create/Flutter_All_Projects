import 'package:datecetera_app/config/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StackExample extends StatefulWidget {
  const StackExample({super.key});

  @override
  State<StackExample> createState() => _StackExampleState();
}

class _StackExampleState extends State<StackExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 300.0, bottom: 8.0),
        child: Stack(
          children: [
            DottedBorder(
              options: RoundedRectDottedBorderOptions(
                color: AppColors.questionDesc,
                strokeWidth: 2,
                dashPattern: [10, 5],
                radius: Radius.circular(5),
              ),
              child: Container(
                height: 100,
                width: 300,

              ),
            ),

            Positioned(
              top: 30,
              right: 20,
              child: CircleAvatar(child: Icon(Icons.add, size: 30, color: Colors.black))),

          ],

        ),
      ),
    );
  }
}
                                                                                                                                                                                                                                                                           