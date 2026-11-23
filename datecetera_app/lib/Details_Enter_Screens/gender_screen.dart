import 'package:datecetera_app/Details_Enter_Screens/religion_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/onboarding_selectable_listview_builder_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  List ganderList = ["Male", "Female", "Non-binary", "Prefer not to say"];
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
                    questionTitle: "What's your gender?",
                    questionDesc: 'Choose how you\'d like to be identified.',
                  ),
                  OnboardingSelectableListviewBuilder(
                    commonList : ganderList,
                    selectedIndex: selectedIndex,
                  )

                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReligionScreen()),
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
