import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/profile_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileScreenController controller =
        Get.find<ProfileScreenController>();

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
          'Personal Details',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),

      body: GetBuilder<ProfileScreenController>(
        builder: (controller) {
          final user = controller.userData;

          if (user == null) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              children: [
                // Profile Image
                Container(
                  width: 95.w,
                  height: 95.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.shade100,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      user.image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(
                          Icons.person,
                          size: 50.sp,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 12.h),

                Text(
                  '${user.firstName} ${user.lastName}',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 4.h),

                Text(
                  user.email,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.grey.shade600,
                  ),
                ),

                SizedBox(height: 25.h),

                // Personal Information
                _detailsCard(
                  title: 'Personal Information',
                  children: [
                    _detailTile(title: 'First Name', value: user.firstName),
                    _detailTile(title: 'Last Name', value: user.lastName),
                    _detailTile(title: 'Username', value: user.username),
                    _detailTile(title: 'Gender', value: user.gender),
                    _detailTile(title: 'Age', value: '${user.age}'),
                    _detailTile(title: 'Birth Date', value: user.birthDate),
                  ],
                ),

                SizedBox(height: 16.h),

                // Contact Information
                _detailsCard(
                  title: 'Contact Information',
                  children: [
                    _detailTile(title: 'Email', value: user.email),
                    _detailTile(title: 'Phone', value: user.phone),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _detailsCard({required String title, required List<Widget> children}) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 12.h),

          ...children,
        ],
      ),
    );
  }

  Widget _detailTile({required String title, required String value}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(width: 10.w),

          Expanded(
            flex: 3,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 13.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
