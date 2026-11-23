import 'package:datecetera_app/Details_Enter_Screens/lookingfor_screen.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/buttons/details_back_arrow_button_widget.dart';
import 'package:datecetera_app/widgets/onboarding_selectable_listview_builder_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class ReligionScreen extends StatefulWidget {
  const ReligionScreen({super.key});

  @override
  State<ReligionScreen> createState() => _ReligionScreenState();
}

class _ReligionScreenState extends State<ReligionScreen> {
  List religionList = ["Hindu", "Christian", "Muslim","Atheist", "etc"];
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
                    questionTitle: "Add Religion?",
                    questionDesc: 'Share your faith or spiritual beliefs. ',
                  ),

                  OnboardingSelectableListviewBuilder(
                    commonList: religionList,
                    selectedIndex: selectedIndex,
                  ),
                ],
              ),

              CustomNextButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LookingforScreen()),
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
