import 'package:flutter/material.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  const PasswordTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
  });

  final TextEditingController controller;
  final String hintText;

  @override
  State<PasswordTextFieldWidget> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextFieldWidget> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: showPassword,

      decoration: InputDecoration(
        hintText: widget.hintText,
        border: const OutlineInputBorder(borderSide: BorderSide.none),

        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              showPassword = !showPassword;
            });
          },

          icon: Icon(
            showPassword
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
          ),

          tooltip: showPassword ? 'Show password' : 'Hide password',
        ),
      ),
    );
  }
}
