import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_setingsection_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class MyprofileRowWidget extends StatefulWidget {
  final IconData rowLeftIcon;
  final IconData? rowRightIcon;
  final String rowLeftText;
  final String? rowRightText;
  const MyprofileRowWidget({
    super.key,
    required this.rowLeftIcon,
    this.rowRightIcon,
    required this.rowLeftText,
    this.rowRightText,
  });

  @override
  State<MyprofileRowWidget> createState() => _MyprofileRowWidgetState();
}

class _MyprofileRowWidgetState extends State<MyprofileRowWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          widget.rowLeftIcon,
          color: widget.rowRightIcon != null
              ? AppColors.black
              : AppColors.onBoardingTileBorder,
        ),
        SizedBox(width: widget.rowRightIcon != null ? 20 : 10),
        Text(
          widget.rowLeftText,
          style: TextStyle(
            fontSize: widget.rowRightIcon != null ? 22 : 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        widget.rowRightIcon != null
            ? InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyprofileSetingsectionScreen(),
                    ),
                  );
                },
                child: Icon(
                  widget.rowRightIcon,
                  color: AppColors.textFieldBorder,
                ),
              )
            : Text(
                widget.rowRightText ?? '',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ],
    );
  }
}
