import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsBackArrowButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  const DetailsBackArrowButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        minimumSize: Size(40, 40),
        padding: EdgeInsets.zero,
      ),
      child: Icon(Icons.arrow_back, color: AppColors.questionDesc, size: 20),
    );
  }
}
