import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/signup_controller.dart';
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

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController controller = Get.find<SignupController>();
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

                BackWidget(), // Back

                SizedBox(height: 8.h),

                // Title
                Center(
                  child: LoginsignupTitleTextWidget(
                    title: 'Create new account',
                    description: 'Just a few details to get started',
                  ),
                ),

                SizedBox(height: 24.h),

                //Form
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextfieldLableTextWidget(title: 'Name'), // Name

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: CommonTextField(
                        controller: controller.nameController,
                        hintText: 'Enter your name',
                      ),
                    ),

                    SizedBox(height: 12.h),

                    TextfieldLableTextWidget(title: 'Email'), // Email

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: CommonTextField(
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

                    SizedBox(height: 12.h),

                    TextfieldLableTextWidget(
                      title: 'Confirm Password',
                    ), // Confirm Password

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: PasswordTextFieldWidget(
                        controller: controller.confirmPasswordController,
                        hintText: 'Re-type your password',
                      ),
                    ),

                    SizedBox(height: 12.h),

                    TextfieldLableTextWidget(title: 'Gender'), //Gender

                    SizedBox(height: 4.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 48.h,
                          width: 106.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Center(
                            child: Text(
                              'Male',
                              style: AppTextstyle.inter(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 48.h,
                          width: 106.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Center(
                            child: Text(
                              'Female',
                              style: AppTextstyle.inter(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 48.h,
                          width: 106.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          child: Center(
                            child: Text(
                              'Other',
                              style: AppTextstyle.inter(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),

                    TextfieldLableTextWidget(title: 'Date of Birth'), // Dob

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: CommonTextField(
                        readOnly: true,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime(2000),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );

                          if (pickedDate != null) {
                            controller.dobController.text =
                                '${pickedDate.day}/${pickedDate.month}/${pickedDate.year}';
                          }
                        },
                        controller: controller.dobController,
                        hintText: 'Select your date of birth',
                      ),
                    ),

                    SizedBox(height: 12.h),

                    TextfieldLableTextWidget(
                      title: 'Referral Code (Optional)',
                    ), //Referal

                    SizedBox(height: 4.h),

                    TextfieldcontainerWidget(
                      widget: CommonTextField(
                        controller: TextEditingController(),
                        hintText: 'Enter referral code',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 24.h),

                CustomElivatedButton(
                  onTap: () {
                    controller.signUp(
                      userName: controller.nameController.text,
                      email: controller.emailController.text.trim(),
                      password: controller.passwordController.text,
                      cPassword: controller.confirmPasswordController.text,
                      dob: controller.dobController.text,
                    );
                  },
                  title: 'Sign Up',
                ), // Sign Up Button

                SizedBox(height: 16.h),

                LoginSignRichtextWidget(
                  // Sign in
                  firstTitle: 'Already have an account?',
                  secondTitle: ' Sign In',
                  onTap: () {
                    controller.login();
                  },
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
                SizedBox(height: 24.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
