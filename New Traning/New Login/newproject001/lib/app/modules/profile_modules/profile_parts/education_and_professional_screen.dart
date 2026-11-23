import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profile_details_fields_widget.dart';
import 'package:newproject001/app/modules/home_module/models/user_profile_model.dart';

class EducationAndProfessionalScreen extends StatelessWidget {
  const EducationAndProfessionalScreen({
    super.key,
    required this.userData,
    required this.userNo,
  });
  final List<UserProfileModel> userData;
  final int userNo;

  @override
  Widget build(BuildContext context) {
    final user = userData[userNo];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(12),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 24.h),
            Padding(padding: const EdgeInsets.all(8.0), child: BackWidget()),
            SizedBox(height: 16.h),
            ProfileDetailsFieldsWidget(
              title: 'University',
              description: user.university,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Company Name',
              description: user.company.name,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Job Title',
              description: user.company.title,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Department',
              description: user.company.department,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'EIN',
              description: user.ein.toString(),
              check: false,
              small: true,
            ),

            SizedBox(height: 32.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CustomElivatedButton(title: 'Edit Details', onTap: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
