import 'package:datecetera_app/Details_Enter_Screens/add_photos_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class WriteAnswerScreen extends StatefulWidget {
  const WriteAnswerScreen({super.key});

  @override
  State<WriteAnswerScreen> createState() => _WriteAnswerScreenState();
}

class _WriteAnswerScreenState extends State<WriteAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailsBackArrowButtonWidget(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),

                  QuestionTitleDesc(questionTitle: 'Write answer'),

                  DottedBorder(
                    options: RoundedRectDottedBorderOptions(
                      color: AppColors.questionDesc,
                      strokeWidth: 2,
                      dashPattern: [10, 5],
                      radius: Radius.circular(5),
                    ),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Title
                                Text(
                                  'Select a prompt',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                  ),
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

                          Icon(
                            Icons.video_call_outlined,
                            size: 18,
                            color: AppColors.onBoardingTileBorder,
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.mic_none_outlined,
                            size: 18,
                            color: AppColors.onBoardingTileBorder,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPhotosScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
