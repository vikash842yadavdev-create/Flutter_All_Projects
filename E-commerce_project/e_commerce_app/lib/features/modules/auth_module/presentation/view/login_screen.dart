import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:e_commerce_app/features/config/theme/assets.dart';
import 'package:e_commerce_app/features/modules/auth_module/presentation/controler/login_screen_controller.dart';
import 'package:e_commerce_app/features/modules/common_widgets/common_textfield_widget.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button1.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_button2.dart';
import 'package:e_commerce_app/features/modules/common_widgets/custom_textfield.dart';
import 'package:e_commerce_app/features/modules/common_widgets/password_textfield_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(12.sp),
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

                    SizedBox(height: 16.h),

                    Text(
                      'Welcome!',
                      style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black1,
                      ),
                    ),

                    SizedBox(height: 4.h),

                    Text(
                      'Please login or sign up to continue our app',
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        color: AppColors.text1.shade600,
                      ),
                    ),

                    SizedBox(height: 24.h),

                    CustomTextfield(
                      widget: CommonTextField(
                        controller: controller.userNameController,
                        hintText: 'Enter username',

                      ),
                      lable: 'UserName',
                    ),

                    SizedBox(height: 12.h),

                    CustomTextfield(
                      lable: 'Password',
                      widget: PasswordTextFieldWidget(
                        controller: controller.passwordController,
                        hintText: 'Password',
                      ),
                    ),

                    SizedBox(height: 4.h),

                    InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: AppColors.text1.shade600,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 28.h),

                    CustomButton1(
                      ontap: () async {
                        await controller.login(
                          userName: controller.userNameController.text,
                          password: controller.passwordController.text,
                        );
                      },
                      title: 'Login',
                      buttonBg: AppColors.buttonBg2,
                      textColor: AppColors.buttonText1,
                    ),

                    SizedBox(height: 12.h),

                    const Center(child: Text('Or')),

                    SizedBox(height: 12.h),

                    CustomButton1(
                      iconColor: AppColors.buttonText1,
                      prifixIcon: Icons.facebook,
                      ontap: () {},
                      title: 'Continue with Facebook',
                      textColor: AppColors.buttonText1,
                      buttonBg: AppColors.buttonBg3,
                    ),

                    SizedBox(height: 12.h),

                    CustomButton2(
                      iconColor: AppColors.buttonText2,
                      prifixIcon: FontAwesomeIcons.google,
                      ontap: () {},
                      title: 'Continue with Google',
                      borderColor: AppColors.buttonBorder2.shade100,
                      textColor: AppColors.buttonText3.shade500,
                    ),

                    SizedBox(height: 12.h),

                    CustomButton2(
                      iconColor: AppColors.buttonText2,
                      prifixIcon: FontAwesomeIcons.apple,
                      ontap: () {},
                      title: 'Continue with Apple',
                      borderColor: AppColors.buttonBorder2.shade100,
                      textColor: AppColors.buttonText3.shade500,
                    ),

                    SizedBox(height: 8.h),

                    Align(
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          text: 'Don\'t have an account?',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: AppColors.text1.shade600,
                          ),
                          children: [
                            TextSpan(
                              text: ' Sign Up',
                              style: GoogleFonts.poppins(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.buttonBg2,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(AppRoutes.signUpScreen);
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
