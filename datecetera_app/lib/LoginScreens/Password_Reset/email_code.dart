import 'package:datecetera_app/LoginScreens/Password_Reset/change_pass.dart';
import 'package:datecetera_app/config/app_text_style.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/pinput_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class EmailCode extends StatefulWidget {
  const EmailCode({super.key});

  @override
  State<EmailCode> createState() => _EmailCodeState();
}

class _EmailCodeState extends State<EmailCode> {
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
                    questionTitle: 'My email id Code is',
                    questionDesc: 'Send to D*******7@gmail.com Resend',
                  ),

                  PinputExample(),
                  SizedBox(height: 20),

                  Text(
                    'Don’t have access to this email id?',
                    style: AppTextStyle.questionDesc,
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePass()),
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
