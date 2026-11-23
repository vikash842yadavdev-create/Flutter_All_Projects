import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/login_controller.dart';
import 'package:newproject001/app/Core/utils/app_colors.dart';
import 'package:newproject001/app/Core/utils/app_textstyle.dart';
import 'package:newproject001/app/global_widgets/widgets/back_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/common_textfield_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/custom_elivated_button_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/divider_one_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/login_sign_richtext_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/loginsignup_title_text_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/password_textfield_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/textfield_container_widget.dart';
import 'package:newproject001/app/global_widgets/widgets/textfield_lable_text_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.find<LoginController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),

                BackWidget(), //Back Button

                SizedBox(height: 8.h),

                // Title
                Center(
                  child: LoginsignupTitleTextWidget(
                    description: 'Sign in to continue booking',
                    title: 'Welcome back',
                  ),
                ),

                SizedBox(height: 24.h),

                // Form
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextfieldLableTextWidget(title: 'Email'), // Email

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: CommonTextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.emailController,
                        hintText: 'Enter your email',
                      ),
                    ),

                    SizedBox(height: 12.h),

                    TextfieldLableTextWidget(title: 'Password'), // Password

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: PasswordTextFieldWidget(
                        controller: controller.passwordController,
                        hintText: 'Enter your password',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8.h),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: AppTextstyle.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primary,
                    ),
                  ),
                ),

                SizedBox(height: 24.h),

                CustomElivatedButton(
                  title: 'Sign In',
                  onTap: () {
                    controller.login(
                      email: controller.emailController.text.trim(),
                      password: controller.passwordController.text,
                    );
                  },
                ), // Sign In Button

                SizedBox(height: 16.h),

                // Sign Up
                LoginSignRichtextWidget(
                  firstTitle: 'Don\'t have account?',
                  onTap: () {
                    controller.signUp();
                  },
                  secondTitle: ' Sign Up',
                ),

                SizedBox(height: 16.h),

                DividerOneWidget(), //Or Divider

                SizedBox(height: 16.h),

                // Google Button
                Container(
                  height: 48.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          size: 24,
                          color: AppColors.secondary,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          'Continue with Google',
                          style: AppTextstyle.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
