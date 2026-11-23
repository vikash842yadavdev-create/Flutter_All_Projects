import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingCarddetailsColumnWidget extends StatefulWidget {
  String? upperLabel;
  String? textfieldHint;
  Color? textfieldBgColor;
  int? textfieldHeight;
  int? textfieldwidth;
  IconData? textfieldIcon;
  bool? isSelectedBorder;

  OnboardingCarddetailsColumnWidget({
    super.key,
    this.upperLabel,
    this.textfieldHint,
    this.textfieldBgColor,
    this.textfieldHeight,
    this.textfieldwidth,
    this.textfieldIcon,
    this.isSelectedBorder,
  });

  @override
  State<OnboardingCarddetailsColumnWidget> createState() =>
      _OnboardingCarddetailsColumnWidgetState();
}

class _OnboardingCarddetailsColumnWidgetState
    extends State<OnboardingCarddetailsColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.upperLabel ?? '',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: widget.textfieldwidth?.toDouble() ?? 343,
          height: widget.textfieldHeight?.toDouble() ?? 50,
          child: TextField(
            decoration: InputDecoration(

              suffixIcon: widget.textfieldIcon != null
                  ? Icon(widget.textfieldIcon, color: AppColors.black,size: 20,)
                  : null,
              contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              filled: true,
              fillColor:
                  widget.textfieldBgColor ?? AppColors.debitCardTextfieldBg,
              hintText: widget.textfieldHint ?? '',
              border: (widget.isSelectedBorder ?? false)
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: AppColors.black, width: 2),
                    )
                  : OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
              hintStyle: TextStyle(color: AppColors.black, fontSize: 14),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

// BorderSide.none

// OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0), // Rounded corners
//                 borderSide: BorderSide.none, // Removes the default border line
//               ),
