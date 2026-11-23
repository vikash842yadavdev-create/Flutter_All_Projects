import 'package:datecetera_app/Details_Enter_Screens/write_answer_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/onboarding_add_prompt_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class PromptAnswersScreen extends StatefulWidget {
  const PromptAnswersScreen({super.key});

  @override
  State<PromptAnswersScreen> createState() => _PromptAnswersScreenState();
}

class _PromptAnswersScreenState extends State<PromptAnswersScreen> {
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

                  QuestionTitleDesc(questionTitle: 'Add 3 prompt answers?'),

                  OnboardingAddPromptWidget(),
                  SizedBox(height: 20),
                  OnboardingAddPromptWidget(),
                  SizedBox(height: 20),

                  OnboardingAddPromptWidget(),
                  SizedBox(height: 10),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WriteAnswerScreen()),
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
