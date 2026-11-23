import 'package:flutter/material.dart';

class ProfileLikeboostStackWidget extends StatelessWidget {
  final IconData stackIcon;
  final String stackText;
  final Color iconColor;
  final double iconSize;
  const ProfileLikeboostStackWidget({
    super.key,
    required this.stackIcon,
    required this.iconColor,
    required this.stackText,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 100,
          width: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white70,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1), // Shadow color
                spreadRadius: 3, // How much the shadow should expand
                blurRadius: 10, // How blurry the shadow should be
                offset: Offset(0, 2), // Changes position: (x, y)
              ),
            ],
          ),
        ),

        Positioned(
          top: 75,
          child: Container(
            height: 20,
            width: 85,

            child: Center(
              child: Text(stackText, style: TextStyle(fontSize: 10)),
            ),
          ),
        ),

        Positioned(
          top: 10,
          left: 12.5,
          right: 12.5,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1), // Shadow color
                  spreadRadius: 3, // How much the shadow should expand
                  blurRadius: 5, // How blurry the shadow should be
                  offset: Offset(0, 4), // Changes position: (x, y)
                ),
              ],
            ),
            child: Icon(stackIcon, size: iconSize, color: iconColor),
          ),
        ),

        Positioned(
          top: -8,
          right: -8,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white70,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1), // Shadow color
                  spreadRadius: 3, // How much the shadow should expand
                  blurRadius: 5, // How blurry the shadow should be
                  offset: Offset(0, 4), // Changes position: (x, y)
                ),
              ],
            ),
            child: Icon(Icons.add, size: 10, color: iconColor),
          ),
        ),
      ],
    );
  }
}
