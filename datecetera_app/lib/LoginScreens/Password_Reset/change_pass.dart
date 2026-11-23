import 'package:datecetera_app/popupscreens/popup_success_reset_pass_screen.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
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
                    questionTitle: 'Change your password',

                  ),

                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: AppColors.suffixIconColor,
                        size: 25,
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
                      hintText: 'Password',
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
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.visibility_outlined,
                        color: AppColors.suffixIconColor,
                        size: 25,
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
                      hintText: 'Confirm Password',
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
                    MaterialPageRoute(builder: (context) => PopupSuccessResetPassScreen()),
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
