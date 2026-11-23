import 'package:datecetera_app/Details_Enter_Screens/gender_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class DobScreen extends StatefulWidget {
  const DobScreen({super.key});

  @override
  State<DobScreen> createState() => _DobScreenState();
}

class _DobScreenState extends State<DobScreen> {
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
                  DetailsBackArrowButtonWidget(onPressed: () {
                    Navigator.pop(context);
                  }),

                  QuestionTitleDesc(
                    questionTitle: 'What is your date of birth?',
                    questionDesc:
                        'Your profile shows your age. not your birth date.',
                  ),

                  TextField(
                    decoration: InputDecoration(
                       suffixIcon: Icon(
                        Icons.calendar_month,
                        color:AppColors.suffixIconColor,
                      ),
                       suffixIconConstraints: BoxConstraints(
                        maxHeight: 30, // custom size
                        maxWidth: 30, // custom size
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 8.0,
                      ),
                      hintText: 'Enter your date of birth',
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

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GenderScreen()),
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
