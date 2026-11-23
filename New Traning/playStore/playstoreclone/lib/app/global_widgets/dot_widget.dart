import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
