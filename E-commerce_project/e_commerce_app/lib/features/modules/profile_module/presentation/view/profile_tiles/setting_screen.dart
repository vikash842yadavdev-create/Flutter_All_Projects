import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/setting_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsScreenController>(
      init: SettingsScreenController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.white1,

          appBar: AppBar(
            backgroundColor: AppColors.white1,
            elevation: 0,
            scrolledUnderElevation: 0,

            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 18.sp,
                color: Colors.black,
              ),
            ),

            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            centerTitle: true,
          ),

          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Preferences
                _sectionTitle('Preferences'),

                SizedBox(height: 10.h),

                _settingsCard(
                  children: [
                    _switchTile(
                      icon: Icons.notifications_none_rounded,
                      title: 'Notifications',
                      subtitle: 'Receive notifications about your orders',
                      value: controller.notificationsEnabled,
                      onChanged: (value) {
                        controller.changeNotification(value);
                      },
                    ),

                    _divider(),

                    _switchTile(
                      icon: Icons.dark_mode_outlined,
                      title: 'Dark Mode',
                      subtitle: 'Change the appearance of the app',
                      value: controller.darkModeEnabled,
                      onChanged: (value) {
                        controller.changeDarkMode(value);
                      },
                    ),
                  ],
                ),

                SizedBox(height: 22.h),

                // Security
                _sectionTitle('Security'),

                SizedBox(height: 10.h),

                _settingsCard(
                  children: [
                    _switchTile(
                      icon: Icons.fingerprint_rounded,
                      title: 'Biometric Login',
                      subtitle: 'Use fingerprint or face authentication',
                      value: controller.biometricEnabled,
                      onChanged: (value) {
                        controller.changeBiometric(value);
                      },
                    ),
                  ],
                ),

                SizedBox(height: 22.h),

                // General
                _sectionTitle('General'),

                SizedBox(height: 10.h),

                _settingsCard(
                  children: [
                    _navigationTile(
                      icon: Icons.language_rounded,
                      title: 'Language',
                      subtitle: controller.selectedLanguage,
                      onTap: () {
                        controller.changeLanguage();
                      },
                    ),

                    _divider(),

                    _navigationTile(
                      icon: Icons.info_outline_rounded,
                      title: 'About App',
                      subtitle: 'Version ${controller.appVersion}',
                      onTap: () {
                        controller.showAboutApp();
                      },
                    ),
                  ],
                ),

                SizedBox(height: 30.h),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
    );
  }

  Widget _settingsCard({required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(children: children),
    );
  }

  Widget _switchTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Container(
            width: 38.w,
            height: 38.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(icon, size: 20.sp, color: Colors.black),
          ),

          SizedBox(width: 14.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 2.h),

                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 8.w),

          Switch(value: value, onChanged: onChanged, activeColor: Colors.black),
        ],
      ),
    );
  }

  Widget _navigationTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.r),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          children: [
            Container(
              width: 38.w,
              height: 38.w,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(icon, size: 20.sp, color: Colors.black),
            ),

            SizedBox(width: 14.w),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 2.h),

                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15.sp,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Divider(height: 1, color: Colors.grey.shade200);
  }
}
