import 'package:flutter/material.dart';

class UpperappbarWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const UpperappbarWidget({super.key, required this.onTap,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(onTap: onTap, child: Icon(Icons.arrow_back, size: 20)),
        SizedBox(width: 20),
        Text(title, style: TextStyle(fontSize: 22)),
      ],
    );
  }
}
