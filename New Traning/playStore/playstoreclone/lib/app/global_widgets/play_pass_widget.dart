import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playstoreclone/app/core/utils/config/assets.dart';

class PlayPassWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 210.sp,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.googlePlayPassBgImg2),
                  ),
                  color: Colors.grey.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.zero,
                            height: 25.h,
                            child: Image(
                              image: AssetImage(Assets.googlePlayPassImg),
                            ),
                          ),
                          Text(
                            'Google Play Pass',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h,),
                      Text(
                        'Play without ads',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       SizedBox(height: 8.h),
                      SizedBox(
                        width: 230.w,
                        child: Text(
                          'Enjoy 1,000+ games and apps with no ads  or in-app purchases',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ),
                       SizedBox(height: 12.h),

                      Container(
                        height: 30.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.grey.shade500,
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text('Learn more',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade800
                            ),
                          ),),
                      ),
                    ],
                  ),
                ),
              );
  }
}
