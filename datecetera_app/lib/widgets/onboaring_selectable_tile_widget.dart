import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class OnboaringSelectableTile extends StatefulWidget {
  final bool isSelected;
  final String title;
  const OnboaringSelectableTile({
    super.key,
    required this.isSelected,
    required this.title,
  });

  @override
  State<OnboaringSelectableTile> createState() =>
      _OnboaringSelectableTileState();
}

class _OnboaringSelectableTileState extends State<OnboaringSelectableTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: widget.isSelected
          ? BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: AppColors.onBoardingTileBorder,
                width: 1.5,
              ),
            )
          : BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.textFieldBorder),
              ),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              color: widget.isSelected
                  ? AppColors.black
                  : AppColors.questionDesc,
              fontSize: 18,
            ),
          ),
          Icon(
            widget.isSelected
                ? Icons.radio_button_checked_rounded
                : Icons.radio_button_off_rounded,
            color: widget.isSelected
                ? AppColors.onBoardingTileBorder
                : AppColors.onBoardingTileIconNotSelected,
          ),
        ],
      ),
    );
  }
}

// CupertinoIcons.check_mark_circled_solid
// Border.all(
//         color: widget.isSelected ? Colors.green : Colors.grey,
//         width: 1.5,
//       ),
