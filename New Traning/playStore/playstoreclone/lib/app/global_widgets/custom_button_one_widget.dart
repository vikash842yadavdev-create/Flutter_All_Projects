import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonOneWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: 60.h,
      decoration: BoxDecoration(
        color: Colors.blue.shade800,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text('Install', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12)),
      ),
    );
  }
}
