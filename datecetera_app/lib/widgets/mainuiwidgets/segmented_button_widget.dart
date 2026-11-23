import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class SegmentedButtonWidget extends StatefulWidget {
  int selectedIndex;
  List<String> vibes;
  SegmentedButtonWidget({super.key,required this.selectedIndex,required this.vibes});

  @override
  State<SegmentedButtonWidget> createState() => _SegmentedButtonWidgetState();
}

class _SegmentedButtonWidgetState extends State<SegmentedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 40,
            width: 345,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.segmentedButtonBg,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(widget.vibes.length, (index) {
                bool isSelected = widget.selectedIndex == index;

                return Expanded(
                  child: Theme(
                    data: Theme.of(
                      context,
                    ).copyWith(splashFactory: NoSplash.splashFactory),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          widget.selectedIndex = index;
                        });
                      },

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: isSelected
                              ? AppColors.onBoardingTileBorder
                              : Colors.transparent,
                        ),

                        child: Center(
                          child: Text(
                            widget.vibes[index],
                            style: TextStyle(
                              fontSize: 14,
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          );
  }
}
