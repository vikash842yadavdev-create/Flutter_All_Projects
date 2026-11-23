import 'package:datecetera_app/config/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class OnboardingAddPromptWidget extends StatefulWidget {
  const OnboardingAddPromptWidget({super.key});

  @override
  State<OnboardingAddPromptWidget> createState() =>
      _OnboardingAddPromptWidgetState();
}

class _OnboardingAddPromptWidgetState extends State<OnboardingAddPromptWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        /// Dotted Border Container
        DottedBorder(
          options: RoundedRectDottedBorderOptions(
            color: AppColors.questionDesc,
            strokeWidth: 2,
            dashPattern: [3, 2],
            radius: Radius.circular(5),
          ),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      Text(
                        'Select a prompt',
                        style: TextStyle(color: AppColors.black, fontSize: 16),
                      ),

                      /// TextField
                      TextField(
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: 'Add write your own answer',
                          hintStyle: TextStyle(
                            color: AppColors.textFieldHint,
                            fontSize: 14,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        /// Floating + Button
        Positioned(
          right: -12,
          top: 30,
          child: CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.onBoardingTileBorder,
            child: const Icon(Icons.add, color: Colors.white, size: 16),
          ),
        ),
      ],
    );
  }
}
