import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playstoreclone/app/core/utils/config/assets.dart';
import 'package:playstoreclone/app/data/models/for_you_model.dart';
import 'package:playstoreclone/app/data/models/recommended_section_model.dart';
import 'package:playstoreclone/app/data/models/suggest_section_model.dart';
import 'package:playstoreclone/app/global_widgets/appbar_widget.dart';
import 'package:playstoreclone/app/global_widgets/categoary_tabs_widgets.dart';
import 'package:playstoreclone/app/global_widgets/foryou_section_widget.dart';
import 'package:playstoreclone/app/global_widgets/play_pass_widget.dart';
import 'package:playstoreclone/app/global_widgets/recommended_section_widget.dart';
import 'package:playstoreclone/app/global_widgets/sponsored_bar_widget.dart';
import 'package:playstoreclone/app/global_widgets/sponsored_suggested_widget.dart';

class AppsScreen extends StatelessWidget {
  const AppsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                child: AppbarWidget(),
              ),
              CategoryTabs(),
              SizedBox(height: 12.h),
              SizedBox(
                height: 210.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ForYouModel.forYouList.length,
                  itemBuilder: (context, index) {
                    final data = ForYouModel.forYouList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ForyouSectionWidget(
                        bgImage: data.bgImage,
                        bgImageText: data.bgImageText,
                        logoImage: data.logoImage,
                        title: data.title,
                        subTitle: data.subTitle,
                        rating: data.rating,
                        ratedFor: data.ratedFor,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                child: SponsoredBarWidget(),
              ),
              SizedBox(height: 16.h),

              SizedBox(
                height: 210.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: (SuggestSectionModel.suggestList.length / 3)
                      .ceil(),
                  itemBuilder: (context, index) {
                    final startIndex = index * 3;

                    final items = SuggestSectionModel.suggestList
                        .skip(startIndex)
                        .take(3)
                        .toList();

                    return SizedBox(
                      width: 360.w, // 👈 fixed page width
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            for (final data in items) ...[
                              SponsoredSuggestedWidget(
                                title: data.title,
                                desc1: data.desc1,
                                desc2: data.desc2,
                                desc3: data.desc3,
                                logo: data.logo,
                                rating: data.rating,
                                sizeInMB: data.sizeInMB,
                              ),

                              if (data != items.last) SizedBox(height: 16.h),
                            ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended for you',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 22.h,
                      width: 20.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.arrow_forward, size: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),

              SizedBox(
                height: 160.sp,
                width: 360.sp,
                child: ListView.builder(
                  padding: EdgeInsets.zero,

                  scrollDirection: Axis.horizontal,
                  itemCount: RecommendedSectionModel.recommendedList.length,
                  itemBuilder: (context, index) {
                    final data = RecommendedSectionModel.recommendedList[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: RecommendedSectionWidget(
                        logo: data.logo,
                        rating: data.rating,
                        title: data.title,
                      ),
                    );
                  },
                ),
              ),

              PlayPassWidget(),


              SizedBox(height: 40.h),
            ],
          ),
        ),
      ),
    );
  }
}
