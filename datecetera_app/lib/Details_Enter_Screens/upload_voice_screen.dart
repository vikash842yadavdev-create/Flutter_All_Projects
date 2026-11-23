import 'package:datecetera_app/Details_Enter_Screens/get_started_screen.dart';
import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class UploadVoiceScreen extends StatefulWidget {
  const UploadVoiceScreen({super.key});

  @override
  State<UploadVoiceScreen> createState() => _UploadVoiceScreenState();
}

class _UploadVoiceScreenState extends State<UploadVoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    questionTitle: 'Upload a voice recorder?',
                    questionDesc:
                        'Record or upload a short audio to let your voice shine.',
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: AppColors.onBoardingTileBorder,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.mic_outlined,
                        color: AppColors.white,
                        size: 50,
                      ),
                    ),
                    SizedBox(height: 30),

                    Image.asset(AppAssets.imgTimer, width: 80, height: 24),
                    SizedBox(height: 20),

                    Image.asset(AppAssets.imgVoiceBar, width: 244, height: 55),

                    SizedBox(height: 30),

                    CircleAvatar(
                      backgroundColor: AppColors.onBoardingTileBorder,
                      radius: 25,

                      child: Icon(
                        Icons.pause,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GetStartedScreen(),
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
