import 'package:firebase_android/features/config/routes/app_routes.dart';
import 'package:firebase_android/features/modules/auth_module/presentation/controler/signup_controller.dart';
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
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),

                    // Logo
                    Center(
                      child: Container(
                        height: 80.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(24.r),
                        ),
                        child: Center(
                          child: Text(
                            'F',
                            style: GoogleFonts.poppins(
                              fontSize: 42.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 28.h),

                    Text(
                      'Create Account',
                      style: GoogleFonts.poppins(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),

                    SizedBox(height: 6.h),

                    Text(
                      'Create a new account to get started',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        color: Colors.grey.shade600,
                      ),
                    ),

                    SizedBox(height: 28.h),

                    // User Name
                    Text(
                      'User Name',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 7.h),

                    TextField(
                      controller: controller.userNameController,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.grey.shade500,
                        ),
                        prefixIcon: const Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: const Color(0xFF1565C0),
                            width: 1.5.w,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    // Email
                    Text(
                      'Email',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 7.h),

                    TextField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.grey.shade500,
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: const Color(0xFF1565C0),
                            width: 1.5.w,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    // Password
                    Text(
                      'Password',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 7.h),

                    TextField(
                      controller: controller.passwordController,
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.grey.shade500,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: const Color(0xFF1565C0),
                            width: 1.5.w,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),

                    // Confirm Password
                    Text(
                      'Confirm Password',
                      style: GoogleFonts.poppins(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),

                    SizedBox(height: 7.h),

                    TextField(
                      controller: controller.confirmPasswordController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: 'Confirm your password',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          color: Colors.grey.shade500,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_reset_outlined,
                          color: Colors.grey,
                        ),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 15.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.r),
                          borderSide: BorderSide(
                            color: const Color(0xFF1565C0),
                            width: 1.5.w,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 18.h),

                    // Terms & Conditions
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.check = !controller.check;
                            controller.update();
                          },
                          borderRadius: BorderRadius.circular(4.r),
                          child: Icon(
                            controller.check
                                ? Icons.check_box
                                : Icons.check_box_outline_blank,
                            size: 21.sp,
                            color: controller.check
                                ? const Color(0xFF1565C0)
                                : Colors.grey.shade600,
                          ),
                        ),

                        SizedBox(width: 7.w),

                        Expanded(
                          child: Text(
                            'By creating an account you agree to our '
                            'terms & conditions.',
                            style: GoogleFonts.poppins(
                              fontSize: 11.5.sp,
                              color: Colors.grey.shade600,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 25.h),

                    // Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      height: 52.h,
                      child: ElevatedButton(
                        onPressed: () async {
                          await controller.signUp(
                            userName: controller.userNameController.text,
                            email: controller.emailController.text,
                            password: controller.passwordController.text,
                            confirmPassword:
                                controller.confirmPasswordController.text,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1565C0),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        child: Text(
                          'Create Account',
                          style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 18.h),

                    // Login
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account?',
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                            color: Colors.grey.shade600,
                          ),
                          children: [
                            TextSpan(
                              text: ' Sign In',
                              style: GoogleFonts.poppins(
                                fontSize: 12.5.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF1565C0),
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

                    SizedBox(height: 20.h),
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
