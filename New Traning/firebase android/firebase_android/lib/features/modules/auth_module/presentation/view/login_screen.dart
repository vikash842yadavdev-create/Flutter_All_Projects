import 'package:firebase_android/features/config/routes/app_routes.dart';
import 'package:firebase_android/features/modules/auth_module/presentation/controler/login_screen_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// Keep your existing imports for:
// Assets
// AppRoutes

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginScreenController>(
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 35.h),

                    // LOGO
                    Container(
                      height: 65.h,
                      width: 65.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                      child: Center(
                        child: Text(
                          'F',
                          style: GoogleFonts.poppins(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35.h),

                    // TITLE
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome Back',
                        style: GoogleFonts.poppins(
                          fontSize: 27.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    SizedBox(height: 6.h),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Login to continue to your account',
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),

                    SizedBox(height: 30.h),

                    // USERNAME LABEL
                    _fieldLabel('Username'),

                    SizedBox(height: 8.h),

                    // USERNAME FIELD
                    Container(
                      height: 54.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(14.r),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        controller: controller.userNameController,
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your username',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.grey.shade500,
                          ),
                          prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            size: 21.sp,
                            color: Colors.grey.shade700,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                        ),
                      ),
                    ),

                    SizedBox(height: 18.h),

                    // PASSWORD LABEL
                    _fieldLabel('Password'),

                    SizedBox(height: 8.h),

                    // PASSWORD FIELD
                    Container(
                      height: 54.h,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade50,
                        borderRadius: BorderRadius.circular(14.r),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        controller: controller.passwordController,
                        obscureText: true,
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your password',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.grey.shade500,
                          ),
                          prefixIcon: Icon(
                            Icons.lock_outline_rounded,
                            size: 21.sp,
                            color: Colors.grey.shade700,
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                        ),
                      ),
                    ),

                    SizedBox(height: 10.h),

                    // FORGOT PASSWORD
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: GoogleFonts.poppins(
                            fontSize: 11.5.sp,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF1565C0),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 25.h),

                    // LOGIN BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 54.h,
                      child: ElevatedButton(
                        onPressed: () async {
                          await controller.login(
                            userName: controller.userNameController.text,
                            password: controller.passwordController.text,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1565C0),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.r),
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 25.h),

                    // OR DIVIDER
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: Text(
                            'OR',
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.shade300,
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 22.h),

                    // GOOGLE
                    _socialButton(
                      icon: Icons.g_mobiledata_rounded,
                      title: 'Continue with Google',
                      onTap: () {},
                    ),

                    SizedBox(height: 12.h),

                    // FACEBOOK
                    _socialButton(
                      icon: Icons.facebook_rounded,
                      title: 'Continue with Facebook',
                      onTap: () {},
                    ),

                    SizedBox(height: 12.h),

                    // APPLE
                    _socialButton(
                      icon: Icons.apple_rounded,
                      title: 'Continue with Apple',
                      onTap: () {},
                    ),

                    SizedBox(height: 25.h),

                    // SIGN UP
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "Don't have an account?",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: Colors.grey.shade600,
                        ),
                        children: [
                          TextSpan(
                            text: ' Sign Up',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1565C0),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(AppRoutes.signUpScreen);
                              },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 30.h),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // FIELD LABEL
  static Widget _fieldLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
    );
  }

  // SOCIAL BUTTON
  static Widget _socialButton({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.grey.shade300, width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 22.sp, color: Colors.black),
            SizedBox(width: 10.w),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
