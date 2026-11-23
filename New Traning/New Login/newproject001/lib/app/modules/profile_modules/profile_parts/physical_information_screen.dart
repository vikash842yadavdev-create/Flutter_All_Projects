import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profile_details_fields_widget.dart';
import 'package:newproject001/app/modules/home_module/models/user_profile_model.dart';

class PhysicalInformationScreen extends StatelessWidget {
  const PhysicalInformationScreen({
    super.key,
    required this.userdata,
    required this.userNo,
  });
  final List<UserProfileModel> userdata;
  final int userNo;

  @override
  Widget build(BuildContext context) {
    final user = userdata[userNo];
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
            Row(
              children: [
                ProfileDetailsFieldsWidget(
                  title: 'Height',
                  description: user.height.toString(),
                  check: false,
                  small: false,
                ),
                ProfileDetailsFieldsWidget(
                  title: 'Weight',
                  description: user.weight.toString(),
                  check: false,
                  small: false,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Blood Group',
              description: user.bloodGroup,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                ProfileDetailsFieldsWidget(
                  title: 'Eye Color',
                  description: user.eyeColor,
                  check: false,
                  small: false,
                ),
                ProfileDetailsFieldsWidget(
                  title: 'Hair Color',
                  description: user.hair.color,
                  check: false,
                  small: false,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Hair Type',
              description: user.hair.color,
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
