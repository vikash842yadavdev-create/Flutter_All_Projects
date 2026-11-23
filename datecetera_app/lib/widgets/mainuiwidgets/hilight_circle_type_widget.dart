import 'dart:ui';

import 'package:flutter/material.dart';

class HilightCircleTypeWidget extends StatefulWidget {
  final String imgSelected;
  final IconData icon;
  const HilightCircleTypeWidget({
    super.key,
    required this.imgSelected,
    required this.icon,
  });

  @override
  State<HilightCircleTypeWidget> createState() =>
      _HilightCircleTypeWidgetState();
}

class _HilightCircleTypeWidgetState extends State<HilightCircleTypeWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: Stack(
        children: [
          //first image
          CircleAvatar(
            radius: 37,
            child: ClipOval(
              child: Image.asset(
                widget.imgSelected,
                height: 64,
                width: 64,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //second blur filter
          Positioned.fill(
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Container(color: Colors.white.withOpacity(0.1)),
              ),
            ),
          ),
          //third icon
          Center(child: Icon(widget.icon, color: Colors.white, size: 30)),
          //forth white border
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 6),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 3),
              shape: BoxShape.circle,
            ),
          ),
          //main red border
        ],
      ),
    );
  }
}
