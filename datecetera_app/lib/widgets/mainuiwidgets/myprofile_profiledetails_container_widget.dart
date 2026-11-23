import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_row_widget.dart';
import 'package:flutter/material.dart';

class MyprofileProfiledetailsContainerWidget extends StatefulWidget {
  const MyprofileProfiledetailsContainerWidget({super.key});

  @override
  State<MyprofileProfiledetailsContainerWidget> createState() =>
      _MyprofileProfiledetailsContainerWidgetState();
}

class _MyprofileProfiledetailsContainerWidgetState
    extends State<MyprofileProfiledetailsContainerWidget> {
  // List<ProfileDetailModel> data = [
  //   ProfileDetailModel(icon: Icons.man, question: 'jsdhfjk', answer: 'kjdskf'),
  //   ProfileDetailModel(icon: Icons.man, question: 'jsdhfjk', answer: 'kjdskf'),
  //   ProfileDetailModel(icon: Icons.man, question: 'jsdhfjk', answer: 'kjdskf'),
  //   ProfileDetailModel(icon: Icons.man, question: 'jsdhfjk', answer: 'kjdskf'),
  // ];
  List personDetailsList = [
    {'icon': Icons.man, 'question': 'Gender', 'answer': 'Male'},
    {'icon': Icons.temple_buddhist, 'question': 'Religion', 'answer': 'Hindu'},
    {
      'icon': Icons.remove_red_eye,
      'question': 'Looking For',
      'answer': 'Long-term',
    },
    {
      'icon': Icons.heart_broken,
      'question': 'Relationship',
      'answer': 'Serious',
    },
    {
      'icon': Icons.cast_for_education,
      'question': 'Education',
      'answer': 'Bachelor’s degree',
    },
    {'icon': Icons.man, 'question': 'Lifestyle', 'answer': 'Workout'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),

          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemCount: personDetailsList.length,
            itemBuilder: (context, index) {
              final rowData = personDetailsList[index];
              return Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.all(10),
                height: 70,
                width: 348,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), // Shadow color
                      spreadRadius: 3, // How much the shadow should expand
                      blurRadius: 5, // How blurry the shadow should be
                      offset: Offset(0, 4), // Changes position: (x, y)
                    ),
                  ],
                ),
                child: MyprofileRowWidget(
                  rowLeftIcon: rowData['icon'],
                  rowLeftText: rowData['question'],
                  rowRightText: rowData['answer'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// class ProfileDetailModel {
//   final IconData icon;
//   final String question;
//   final String answer;
//   ProfileDetailModel({
//     required this.icon,
//     required this.question,
//     required this.answer,
//   });
// }

//  MyprofileRowWidget(
//               rowLeftIcon: Icons.man,
//               rowLeftText: 'Gender',
//               rowRightText: 'Male',
//             ),
