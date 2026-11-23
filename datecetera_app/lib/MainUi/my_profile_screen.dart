import 'package:datecetera_app/MainUi/myprofileallsectionsscreen/myprofile_subscriptionplan_screen.dart';
import 'package:datecetera_app/config/app_assets.dart';
import 'package:datecetera_app/config/app_colors.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_GeneralSection_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_audiosection_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_gallerysection_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_pick_text_column_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_profiledetails_container_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofile_row_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/myprofle_writtenpromptssection_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/profile_dummy_images_widget.dart';
import 'package:datecetera_app/widgets/mainuiwidgets/profile_likeboost_stack_widget.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Container(
          child: Column(
            children: [
              MyprofileRowWidget(
                rowLeftIcon: Icons.arrow_back,
                rowLeftText: 'My Profile',
                rowRightIcon: Icons.settings_outlined,
              ),

              SizedBox(height: 20),
              MyprofilePickTextColumnWidget(
                imgProfile: AppAssets.imgProfile1,
                imgHeight: 80,
                imgWidth: 80,
                descriptionText: 'Emma,25',
                textFontSize: 22,
                textColor: AppColors.black,
                sizeBoxSize: 10,
              ),
              SizedBox(height: 20),

              ProfileDummyImagesWidget(),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileLikeboostStackWidget(
                    stackIcon: Icons.star,
                    stackText: '0 Super Likes',
                    iconColor: Colors.orangeAccent,
                    iconSize: 25,
                  ),

                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> MyprofileSubscriptionplanScreen()));
                    },
                    child: ProfileLikeboostStackWidget(
                      stackIcon: Icons.rocket_launch_outlined,
                      stackText: 'My Boosts',
                      iconColor: AppColors.stIconColor,
                      iconSize: 17,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              MyprofileProfiledetailsContainerWidget(),
              SizedBox(height: 20),

              MyprofileGeneralsectionWidget(),
              SizedBox(height: 20),

              MyprofleWrittenpromptssectionWidget(),
              SizedBox(height: 20),

              MyprofileGallerysectionWidget(),
              MyprofileAudiosectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
