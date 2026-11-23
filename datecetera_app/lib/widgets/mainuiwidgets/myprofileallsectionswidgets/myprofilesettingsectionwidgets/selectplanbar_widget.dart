import 'package:flutter/material.dart';

class SelectplanbarWidget extends StatelessWidget {
  const SelectplanbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.pink]),
              ),
            ),
          ),
          SizedBox(width: 7),
          Text(
            "Select Monthly Plan",
            style: TextStyle(
              color: Colors.pink,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 7),

          Expanded(
            child: Container(
              height: 1.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.pink, Colors.purple]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
