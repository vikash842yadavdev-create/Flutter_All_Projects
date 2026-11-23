import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profileTiles_widget.dart';
import 'package:newproject001/app/modules/home_module/controller/profile_screen_controller.dart';
import 'package:newproject001/app/modules/profile_modules/profile_parts/account_and_security_screen.dart';
import 'package:newproject001/app/modules/profile_modules/profile_parts/address_screen.dart';
import 'package:newproject001/app/modules/profile_modules/profile_parts/contact_information_screen.dart';
import 'package:newproject001/app/modules/profile_modules/profile_parts/education_and_professional_screen.dart';
import 'package:newproject001/app/modules/profile_modules/profile_parts/personal_information_screen.dart';
import 'package:newproject001/app/modules/profile_modules/profile_parts/physical_information_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileScreenController>(
      builder: (controller) {
        if (controller.userData.isEmpty) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        final int userNo = 2;
        final user = controller.userData[userNo];

        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  BackWidget(),
                  SizedBox(height: 12.h),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: AppColors.primary,
                            ),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          child: Container(
                            height: 110.sp,
                            width: 110.sp,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100.r),
                              ),
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                user.image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          user.username,
                          style: AppTextstyle.playfair(
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          user.email,
                          style: AppTextstyle.inter(
                            fontSize: 14.sp,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.h),
                  ProfiletilesWidget(
                    leading: Icons.person,
                    title: 'Personal Information',
                    traling: Icons.arrow_forward_ios,
                    onTap: () {
                      Get.to(
                        () => PersonalInformationScreen(
                          userdata: controller.userData,
                          userNo: userNo,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  ProfiletilesWidget(
                    leading: Icons.contact_page,
                    title: 'Contact Information',
                    traling: Icons.arrow_forward_ios,
                    onTap: () {
                      Get.to(
                        () => ContactInformationScreen(
                          userdata: controller.userData,
                          userNo: userNo,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  ProfiletilesWidget(
                    leading: Icons.health_and_safety,
                    title: 'Physical Information',
                    traling: Icons.arrow_forward_ios,
                    onTap: () {
                      Get.to(
                        () => PhysicalInformationScreen(
                          userdata: controller.userData,
                          userNo: userNo,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  ProfiletilesWidget(
                    leading: Icons.place,
                    title: 'Address',
                    traling: Icons.arrow_forward_ios,
                    onTap: () {
                      Get.to(
                        () => AddressScreen(
                          userNo: userNo,
                          userdata: controller.userData,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  ProfiletilesWidget(
                    leading: Icons.school,
                    title: 'Education & Professional',
                    traling: Icons.arrow_forward_ios,
                    onTap: () {
                      Get.to(
                        () => EducationAndProfessionalScreen(
                          userData: controller.userData,
                          userNo: userNo,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  ProfiletilesWidget(
                    leading: Icons.school,
                    title: 'Account & Security',
                    traling: Icons.arrow_forward_ios,
                    onTap: () {
                      Get.to(
                        () => AccountAndSecurityScreen(
                          userData: controller.userData,
                          userNo: userNo,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CustomElivatedButton(
                      title: 'Edit Profile',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
