import 'package:datecetera_app/Details_Enter_Screens/upload_video_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:datecetera_app/widgets/upload_photos_video_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddPhotosScreen extends StatefulWidget {
  const AddPhotosScreen({super.key});

  @override
  State<AddPhotosScreen> createState() => _AddPhotosScreenState();
}

class _AddPhotosScreenState extends State<AddPhotosScreen> {
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

                  QuestionTitleDesc(
                    questionTitle: 'Add your photos?',
                    questionDesc: 'Profiles with photos get more attention.',
                  ),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6, // 6 images + 1 add button
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 110 / 134,
                        ),
                    itemBuilder: (context, index) {
                      /// LAST ITEM (Add Button)
                      if (index == 5) {
                        return DottedBorder(
                          options: RoundedRectDottedBorderOptions(
                            color: AppColors.onBoardingTileBorder,
                            strokeWidth: 2,
                            dashPattern: [3, 2],
                            radius: Radius.circular(20),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 50,

                                color: AppColors.onBoardingTileBorder,
                              ),
                            ),
                          ),
                        );
                      }

                      /// NORMAL UPLOAD BOX
                      return UploadPhotosVideoWidget(
                        width: 110,
                        height: 134,
                        description: 'Upload your profile',
                      );
                    },
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UploadVideoScreen(),
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
