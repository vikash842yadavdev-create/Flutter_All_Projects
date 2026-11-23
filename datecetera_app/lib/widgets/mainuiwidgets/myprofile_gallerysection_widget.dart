import 'package:datecetera_app/config/app_assets.dart';
import 'package:flutter/material.dart';

class MyprofileGallerysectionWidget extends StatefulWidget {
  const MyprofileGallerysectionWidget({super.key});

  @override
  State<MyprofileGallerysectionWidget> createState() => _MyprofileGallerysectionWidgetState();
}

class _MyprofileGallerysectionWidgetState extends State<MyprofileGallerysectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Container(
                  height: 65,
                  width: 55,

                  child: Image.asset(AppAssets.imgProfile1,fit: BoxFit.cover,),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Container(
                  height: 65,
                  width: 55,

                  child: Image.asset(AppAssets.imgProfile1,fit: BoxFit.cover,),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Container(
                  height: 65,
                  width: 55,

                  child: Image.asset(AppAssets.imgProfile1,fit: BoxFit.cover,),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Container(
                  height: 65,
                  width: 55,

                  child: Image.asset(AppAssets.imgProfile1,fit: BoxFit.cover,),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(8),
                child: Container(
                  height: 65,
                  width: 55,

                  child: Image.asset(AppAssets.imgProfile1,fit: BoxFit.cover,),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
