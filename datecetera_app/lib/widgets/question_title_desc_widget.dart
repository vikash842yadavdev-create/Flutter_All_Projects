import 'package:datecetera_app/config/app_text_style.dart';
import 'package:flutter/material.dart';

class QuestionTitleDesc extends StatelessWidget {
  final String questionTitle;
  final double? quesTitleFontSize;
  final double? quesDesFontSize;

  final String? questionDesc;
  const QuestionTitleDesc({
    super.key,
    required this.questionTitle,
    this.questionDesc,
    this.quesDesFontSize,
    this.quesTitleFontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(questionTitle,
            style: quesTitleFontSize != null
                ? TextStyle(fontSize: quesTitleFontSize)
                : AppTextStyle.questionTitle,
          ),
          if (questionDesc != null) ...[
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Text(questionDesc!, style: quesDesFontSize != null
                ? TextStyle(fontSize: quesDesFontSize)
                : AppTextStyle.questionDesc,
          ),
            ),
          ],
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
