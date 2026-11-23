import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/upperappbar_widget.dart';
import 'package:flutter/material.dart';

class MyprofileSettingsectionPrivacypolicysectionScreen
    extends StatelessWidget {
  const MyprofileSettingsectionPrivacypolicysectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpperappbarWidget(
                title: 'Privacy Policy',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 20,),
              Text(
                'Last update: 30/07/2025',
                style: TextStyle(color: AppColors.questionDesc, fontSize: 16),
              ),
              SizedBox(height: 15),

              Text(
                'Please read these privacy policy, carefully before using our app operated by us.',
                style: TextStyle(color: AppColors.black, fontSize: 16),
              ),
              SizedBox(height: 15),

              Text(
                'Privacy Policy',
                style: TextStyle(
                  color: AppColors.onBoardingTileBorder,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 15),

              Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don’t look even slightly believable.  If you are going to use a passage of Lorem Ipsum, you need to be sure there isn’t anything embarrassing hidden in the middle of text.  All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.  It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable.',
                style: TextStyle(color: AppColors.black, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
