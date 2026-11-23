import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/hilight_full_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/matches_person_profile_card_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/rich_text_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/segmented_button_widget.dart';
import 'package:flutter/material.dart';

class MatchesScreen extends StatefulWidget {
  MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  int selectedIndex = 0;
  final List<String> vibes = ["Serious Vibes", "Casual Vibes", "Explore Vibes"];
  List personDetails = [
    {
      'imgPerson': AppAssets.imgMatchesPersonProfileCard1,
      'name': 'Emily Johnson',
      'age': '27',
      'distance': '5',
      'matchePercentage': '100',
    },
    {
      'imgPerson': AppAssets.imgMatchesPersonProfileCard2,
      'name': 'Olivia Brooks',
      'age': '23',
      'distance': '8',
      'matchePercentage': '94',
    },
    {
      'imgPerson': AppAssets.imgMatchesPersonProfileCard3,
      'name': 'Ava Mitchell',
      'age': '25',
      'distance': '10',
      'matchePercentage': '89',
    },
    {
      'imgPerson': AppAssets.imgMatchesPersonProfileCard4,
      'name': 'Sophie Taylor',
      'age': '24',
      'distance': '12',
      'matchePercentage': '80',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Matches', style: TextStyle(fontSize: 22)),
          SizedBox(height: 10),
          SegmentedButtonWidget(selectedIndex: selectedIndex, vibes: vibes),
          SizedBox(height: 20),
          Row(
            children: [
              HilightFullWidget(
                imgSelected: AppAssets.imgProfile2,
                icon: Icons.favorite,
                richText1: 'Likes ',
                richText2: '32',
              ),
              SizedBox(width: 20),

              HilightFullWidget(
                imgSelected: AppAssets.imgProfile3,
                icon: Icons.message_rounded,
                richText1: 'Connect ', 
                richText2: '15',
              ),
            ],
          ),

          SizedBox(height: 35),
          RichTextWidget(
            fontSizeInt: 20,
            fontSizeText: 20,
            text1: 'Your Matches ',
            text2: '10',
          ),
          SizedBox(height: 15),
          GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: personDetails.length, // 6 images + 1 add button
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 163 / 206.59,
            ),
            itemBuilder: (context, index) {
              final person = personDetails[index];
              return MatchesPersonProfileCardWidget(
                imgPerson: person['imgPerson'],
                personName: person['name'],
                personAge: person['age'],
                personDistance: person['distance'],
                personMatchPercentage: person['matchePercentage'],
              );
            },
          ),
        ],
      ),
    );
  }
}

//  MatchesPersonProfileCardWidget(
//             imgPerson: AppAssets.imgMatchesPersonProfileCard1,
//             personName:'Emily Johnson',
//             personAge: '27',
//             personDistance: '5',
//             personMatchPercentage: '100',
//           ),

// RichText(
//             text: TextSpan(
//               style: TextStyle(fontSize: 14),

//               children: <TextSpan>[
//                 TextSpan(
//                   text: 'Your Matches ',
//                   style: TextStyle(
//                     color: AppColors.black,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//                 TextSpan(
//                   text: '10',
//                   style: TextStyle(
//                     color: AppColors.onBoardingTileBorder,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
