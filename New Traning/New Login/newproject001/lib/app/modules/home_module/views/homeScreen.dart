import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profileTiles_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/profile_stack_section_widget.dart';
import 'package:newproject001/app/modules/home_module/controller/homeScreen_controller.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<HomescreenController>(
        builder: (controller) {
          return Column(
            children: [
              ProfileStackSectionWidget(),
              ProfiletilesWidget(
                leading: Icons.person_2_outlined,
                title: controller.getdata.isNotEmpty
                    ? controller.getdata[3]['name']
                    : 'User...',
              ),
              ProfiletilesWidget(
                leading: Icons.calendar_month,
                title: 'Birthday',
              ),
              ProfiletilesWidget(
                leading: Icons.phone,
                title: controller.getdata.isNotEmpty
                    ? controller.getdata[3]['phone']
                    : '123-456-789',
              ),
              ProfiletilesWidget(
                leading: Icons.facebook_outlined,
                title: 'Facebook Account',
              ),
              ProfiletilesWidget(
                leading: Icons.email_outlined,
                title: controller.getdata.isNotEmpty
                    ? controller.getdata[3]['email']
                    : 'Loading...',
              ),
              ProfiletilesWidget(leading: Icons.password, title: 'Password'),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomElivatedButton(
                  title: 'Edit Profile',
                  onTap: () {},
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
