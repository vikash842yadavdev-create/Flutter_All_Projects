import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profile_details_fields_widget.dart';
import 'package:newproject001/app/modules/home_module/models/user_profile_model.dart';

class ContactInformationScreen extends StatelessWidget {
  const ContactInformationScreen({
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
            ProfileDetailsFieldsWidget(
              title: 'Email',
              description: user.email,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Phone',
              description: user.phone,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'UserName',
              description: user.username,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Ip Address',
              description: user.ip,
              check: false,
              small: true,
            ),
            SizedBox(height: 8.h),
            ProfileDetailsFieldsWidget(
              title: 'Password',
              description: user.password,
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
