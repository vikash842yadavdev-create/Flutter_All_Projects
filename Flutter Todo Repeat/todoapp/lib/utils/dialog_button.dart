import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color color;

  const DialogButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(buttonText),
    );
  }
}
