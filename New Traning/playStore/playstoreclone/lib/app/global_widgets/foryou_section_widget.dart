import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playstoreclone/app/global_widgets/custom_button_one_widget.dart';

class ForyouSectionWidget extends StatelessWidget {
  final String bgImage,
      rating,
      bgImageText,
      logoImage,
      title,
      subTitle,
      ratedFor;

  new({
    required this.bgImage,
    required this.bgImageText,
    required this.logoImage,
    required this.title,
    required this.subTitle,
    required this.rating,
    required this.ratedFor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      width: 330.w,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 130.h,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bgImage),
                fit: BoxFit.cover,
              ),

              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  bgImageText,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 12, bottom: 10),
                      padding: EdgeInsets.zero,
                      height: 55.sp,
                      width: 55.sp,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(logoImage)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(height: 4.h),

                        Text(subTitle, style: TextStyle(fontSize: 10)),
                        SizedBox(height: 2.h),
                        Row(
                          children: [
                            Container(
                              height: 15.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(rating, style: TextStyle(fontSize: 10)),
                                  SizedBox(width: 2.w),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Colors.blue.shade800,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Row(
                              children: [
                                Container(
                                  height: 10.h,
                                  width: 10.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 0.3),
                                  ),
                                  child: Center(
                                    child: Text(
                                      ratedFor,
                                      style: TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Text(
                                  'Rated for $ratedFor',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 4.h),
                        Text('Contain ads', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 5.h),
                    CustomButtonOneWidget(),
                    Text('In-app purchases', style: TextStyle(fontSize: 6)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
