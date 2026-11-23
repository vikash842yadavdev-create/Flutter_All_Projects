import 'package:datecetera_app/Details_Enter_Screens/relationship_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/onboarding_selectable_listview_builder_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class LookingforScreen extends StatefulWidget {
  const LookingforScreen({super.key});

  @override
  State<LookingforScreen> createState() => _LookingforScreenState();
}

class _LookingforScreenState extends State<LookingforScreen> {
  List lookingForList = [
    "Long-term Partner",
    "Short- term Partner",
    "Casual dating",
    "New friends",
    "Serious relationship",
  ];
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
                    questionTitle: "What are you looking for?",
                    questionDesc: 'This helps us show you better matches.',
                  ),

                  OnboardingSelectableListviewBuilder(
                    commonList: lookingForList,
                    selectedIndex: selectedIndex,
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RelationshipScreen(),
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
