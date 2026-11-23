import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/config/theme/assets.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/controler/signup_controller.dart';
import 'package:e_commerce_app/features/modules/common_widgets/common_textfield_widget.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button1.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_textfield.dart';
import 'package:e_commerce_app/features/modules/common_widgets/password_textfield_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(16.sp),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),

                    Center(
                      child: SizedBox(
                        height: 110.h,
                        width: 250.w,
                        child: Image.asset(
                          Assets.logoBlack1,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),

                    SizedBox(height: 12.h),

                    Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black1,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      'Create a new account',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: AppColors.text1.shade600,
                      ),
                    ),

                    SizedBox(height: 24.h),

                    CustomTextfield(
                      widget: CommonTextField(
                        controller: controller.userNameController,
                        hintText: 'Enter name',
                      ),
                      lable: 'User Name',
                    ),

                    SizedBox(height: 12.h),

                    CustomTextfield(
                      widget: CommonTextField(
                        controller: controller.emailController,
                        hintText: 'Enter Email',
                      ),
                      lable: 'Email',
                    ),

                    SizedBox(height: 12.h),

                    CustomTextfield(
                      lable: 'Password',
                      widget: PasswordTextFieldWidget(
                        controller: controller.passwordController,
                        hintText: 'Password',
                      ),
                    ),

                    SizedBox(height: 12.h),

                    CustomTextfield(
                      lable: 'Confirm Password',
                      widget: PasswordTextFieldWidget(
                        controller: controller.confirmPasswordController,
                        hintText: 'Confirm Password',
                      ),
                    ),

                    SizedBox(height: 28.h),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.check = !controller.check;
                              controller.update();
                            },
                            child: Icon(
                              controller.check
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              size: 20.sp,
                            ),
                          ),

                          SizedBox(width: 4.w),

                          Expanded(
                            child: Text(
                              'By creating an account you agree to our terms & conditions.',
                              softWrap: true,
                              style: GoogleFonts.poppins(
                                color: AppColors.text1.shade500,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 24.h),

                    CustomButton1(
                      ontap: () async {
                        await controller.signUp(
                          userName: controller.userNameController.text,
                          email: controller.emailController.text,
                          password: controller.passwordController.text,
                          confirmPassword:
                              controller.confirmPasswordController.text,
                        );
                      },
                      title: 'Sign Up',
                      buttonBg: AppColors.buttonBg2,
                      textColor: AppColors.buttonText1,
                    ),

                    SizedBox(height: 8.h),

                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: AppColors.text1.shade600,
                          ),
                          children: [
                            TextSpan(
                              text: ' Sign In',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.buttonBg2,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.offNamed(AppRoutes.loginScreen);
                                },
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
      },
    );
  }
}
