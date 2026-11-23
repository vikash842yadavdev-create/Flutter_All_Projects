import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:tfirstproject/controller/login_controller.dart';
import 'package:tfirstproject/utils/app_colors.dart';
import 'package:tfirstproject/utils/app_spacing.dart';
import 'package:tfirstproject/utils/app_typography.dart';
import 'package:tfirstproject/widgets/common_textfield_widget.dart';
import 'package:tfirstproject/widgets/gradientbutton_widget.dart';
import 'package:tfirstproject/widgets/password_textfield_widget.dart';
import 'package:tfirstproject/widgets/textfield_container_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find<LoginController>();

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Color(0xFFfcfaf5),
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
                  // =====================================================
                  // TITLE
                  // =====================================================
                  SizedBox(height: AppSpacing.md.h),

                  GradientText(
                    'Login',
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
                    'Welcome back! Please login to your account.',
                    textAlign: TextAlign.center,
                    style: textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),

                  SizedBox(height: AppSpacing.xl.h),

                  TextfieldcontainerWidget(
                    widget: CommonTextField(
                      controller: loginController.emailController,
                      hintText: 'Username',
                    ),
                  ),

                  SizedBox(height: AppSpacing.md.h),

                  TextfieldcontainerWidget(
                    widget: PasswordTextFieldWidget(
                      controller: loginController.passwordController,
                      hintText: 'Password',
                    ),
                  ),

                  SizedBox(height: AppSpacing.lg.h),

                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Don't have an account?",
                        style: textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        children: [
                          TextSpan(
                            text: ' Sign Up',
                            style: AppTypography.labelLarge.copyWith(
                              color: AppColors.primaryLight,
                              fontSize: 16.sp,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = loginController.signUp,
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: AppSpacing.md.h),

                  // =====================================================
                  // LOGIN BUTTON
                  // =====================================================
                  GradientButton(
                    text: 'Login',
                    onPressed: () {
                      loginController.login(
                        email: loginController.emailController.text.trim(),
                        password: loginController.passwordController.text,
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
