import 'package:datecetera_app/widgets/onboarding_add_prompt_widget.dart';
import 'package:flutter/material.dart';

class MyprofleWrittenpromptssectionWidget extends StatefulWidget {
  const MyprofleWrittenpromptssectionWidget({super.key});

  @override
  State<MyprofleWrittenpromptssectionWidget> createState() => _MyprofleWrittenpromptssectionWidgetState();
}

class _MyprofleWrittenpromptssectionWidgetState extends State<MyprofleWrittenpromptssectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Written Prompts',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 15),


          OnboardingAddPromptWidget(),
          SizedBox(height: 15,),
          OnboardingAddPromptWidget(),
        ],
      ),
    );
  }
}
