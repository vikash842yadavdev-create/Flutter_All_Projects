import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool readOnly;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      readOnly: readOnly,
      onTap: onTap,

      decoration: InputDecoration(
        border: const OutlineInputBorder(borderSide: BorderSide.none),
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,

        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
      ),
    );
  }
}
