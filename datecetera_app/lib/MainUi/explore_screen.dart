import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/explore_cards_widget.dart';
import 'package:datecetera_app/widgets/question_title_desc_widget.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List exploreCardList = [
    {
      'cardImage': AppAssets.imgExploreCard1,
      'cardMainText': 'Long-term Partner',
      'cardPersonTextData': '100',
    },
    {
      'cardImage': AppAssets.imgExploreCard2,
      'cardMainText': 'Short-term Partner',
      'cardPersonTextData': '80',
    },
    {
      'cardImage': AppAssets.imgExploreCard3,
      'cardMainText': 'Casual Dating',
      'cardPersonTextData': '100',
    },
    {
      'cardImage': AppAssets.imgExploreCard4,
      'cardMainText': 'New Friends',
      'cardPersonTextData': '80',
    },
    {
      'cardImage': AppAssets.imgExploreCard5,
      'cardMainText': 'Serious Daters',
      'cardPersonTextData': '100',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20,left:20,top:30),
      child: Container(

        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuestionTitleDesc(
              questionTitle: 'Explore',
              questionDesc: 'Discover your kind of connection',
              quesTitleFontSize: 22,
              quesDesFontSize: 18,
            ),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: exploreCardList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 163 / 206.59,
                ),
                itemBuilder: (context, index) {
                  final cardDetail = exploreCardList[index];
                  return ExploreCardsWidget(
                    imgCardImage: cardDetail['cardImage'],
                    cardMainText: cardDetail['cardMainText'],
                    cardPersonTextData: cardDetail['cardPersonTextData'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
