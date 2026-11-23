import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tfirstproject/controller/signup_controller.dart';
import 'package:tfirstproject/utils/app_colors.dart';
import 'package:tfirstproject/utils/app_spacing.dart';
import 'package:tfirstproject/utils/app_typography.dart';
import 'package:tfirstproject/widgets/common_textfield_widget.dart';
import 'package:tfirstproject/widgets/gradientbutton_widget.dart';
import 'package:tfirstproject/widgets/password_textfield_widget.dart';
import 'package:tfirstproject/widgets/textfield_container_widget.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final SignupController signupController = Get.find<SignupController>();

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: AppSpacing.lg.w,
                vertical: AppSpacing.lg.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: AppSpacing.md.h),

                  GradientText(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: AppTypography.displaySmall.copyWith(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    colors: const [
                      AppColors.primaryLight,
                      AppColors.primary,
                      AppColors.primaryDark,
                    ],
                  ),

                  SizedBox(height: AppSpacing.sm.h),

                  Text(
                    'Create your account to get started',
                    textAlign: TextAlign.center,
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),

                  SizedBox(height: AppSpacing.xl.h),

                  TextfieldcontainerWidget(
                    widget: CommonTextField(
                      controller: signupController.userNameController,
                      hintText: 'Username',
                    ),
                  ),

                  SizedBox(height: AppSpacing.md.h),

                  TextfieldcontainerWidget(
                    widget: CommonTextField(
                      controller: signupController.emailController,
                      hintText: 'Email',
                    ),
                  ),

                  SizedBox(height: AppSpacing.md.h),

                  TextfieldcontainerWidget(
                    widget: PasswordTextFieldWidget(
                      controller: signupController.passwordController,
                      hintText: 'Password',
                    ),
                  ),

                  SizedBox(height: AppSpacing.md.h),

                  TextfieldcontainerWidget(
                    widget: PasswordTextFieldWidget(
                      controller: signupController.confirmPasswordController,
                      hintText: 'Confirm Password',
                    ),
                  ),

                  SizedBox(height: AppSpacing.lg.h),

                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Already have an account?',
                        style: textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        children: [
                          TextSpan(
                            text: '  Login',
                            style: AppTypography.labelLarge.copyWith(
                              color: AppColors.primaryLight,
                              fontSize: 16.sp,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = signupController.login,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: AppSpacing.md.h),

                  GradientButton(
                    text: 'Sign Up',
                    onPressed: () {
                      signupController.signUp(
                        userName: signupController.userNameController.text
                            .trim(),
                        email: signupController.emailController.text.trim(),
                        password: signupController.passwordController.text,
                        cPassword:
                            signupController.confirmPasswordController.text,
                      );
                    },
                  ),

                  SizedBox(height: AppSpacing.md.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
