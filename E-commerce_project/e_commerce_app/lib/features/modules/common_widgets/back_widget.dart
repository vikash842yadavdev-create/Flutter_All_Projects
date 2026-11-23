import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BackWidget extends StatelessWidget {
  const BackWidget({super.key, this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Icon(Icons.arrow_back, color: color),
    );
  }
}
