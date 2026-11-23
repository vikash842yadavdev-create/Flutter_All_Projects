
import 'package:datecetera_app/Details_Enter_Screens/dob_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';

import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
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

                  DetailsBackArrowButtonWidget(onPressed: () {}),

                  QuestionTitleDesc(
                    questionTitle: 'What is your full name?',
                    questionDesc:
                        'This is how it’ll appear on your profile. Can’t change it later',
                  ),

                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 8.0,
                      ),
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                        color: AppColors.textFieldHint,
                        fontSize: 14,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.textFieldBorder,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              CustomNextButtonWidget(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DobScreen()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
