import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/widgets/buttons/custom_next_button_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofileallsectionswidgets/myprofilesettingsectionwidgets/upperappbar_widget.dart';
import 'package:flutter/material.dart';

class MyprofileLikessectionScreen extends StatefulWidget {
  const MyprofileLikessectionScreen({super.key});

  @override
  State<MyprofileLikessectionScreen> createState() =>
      _MyprofileLikessectionScreenState();
}

class _MyprofileLikessectionScreenState
    extends State<MyprofileLikessectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            UpperappbarWidget(
              onTap: () {
                Navigator.pop(context);
              },
              title: 'Likes',
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.imgLikesBlurPerson,
                  height: 195,
                  width: 155,
                ),
                Image.asset(
                  AppAssets.imgLikesBlurPerson,
                  height: 195,
                  width: 155,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.imgLikesBlurPerson,
                  height: 195,
                  width: 155,
                ),
                Image.asset(
                  AppAssets.imgLikesBlurPerson,
                  height: 195,
                  width: 155,
                ),
              ],
            ),
            SizedBox(height: 10),

            Text(
              'Subscribe to see who liked you!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 150),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: CustomNextButtonWidget(
                onPressed: () {
                  Navigator.pop(context);
                },
                buttonText:'Go Premium',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
