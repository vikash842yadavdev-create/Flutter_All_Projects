import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playstoreclone/app/global_widgets/dot_widget.dart';

class SponsoredBarWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Sponsored',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(width: 5.w),
                     DotWidget(),
                      SizedBox(width: 5.w),
                      Text(
                        'Suggested for you',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert, size: 20),
                ],
              );
  }
}
