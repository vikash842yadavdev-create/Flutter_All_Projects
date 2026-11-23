import 'package:datecetera_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class MyprofileAudiosectionWidget extends StatefulWidget {
  const MyprofileAudiosectionWidget({super.key});

  @override
  State<MyprofileAudiosectionWidget> createState() => _MyprofileAudiosectionWidgetState();
}

class _MyprofileAudiosectionWidgetState extends State<MyprofileAudiosectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 340,
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [

             Text(
            'Audio',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10,),
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(8),
            child: Container(
              height: 65,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Icon(Icons.speaker,color:AppColors.onBoardingTileBorder),


            ),
          ),
        ],
      ),
    );
  }
}
