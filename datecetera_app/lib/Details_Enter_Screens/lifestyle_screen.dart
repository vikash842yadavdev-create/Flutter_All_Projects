import 'package:datecetera_app/Details_Enter_Screens/prompt_answers_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/onboarding_selectable_listview_builder_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class LifestyleScreen extends StatefulWidget {
  const LifestyleScreen({super.key});

  @override
  State<LifestyleScreen> createState() => _LifestyleScreenState();
}

class _LifestyleScreenState extends State<LifestyleScreen> {
  List lifeStyleList = ["Diet", "Drinker", "Workout", "Smoker"];
  int? selectedIndex;
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
                    questionTitle: "Add Lifestyle?",
                    questionDesc:
                        'Show your habits like smoking, drinking, fitness, and food preferences.',
                  ),

                  OnboardingSelectableListviewBuilder(
                    commonList: lifeStyleList,
                    selectedIndex: selectedIndex,
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PromptAnswersScreen()),
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
