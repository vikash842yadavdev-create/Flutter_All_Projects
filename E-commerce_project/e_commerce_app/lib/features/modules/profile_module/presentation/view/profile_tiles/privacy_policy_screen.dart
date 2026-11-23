import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      appBar: AppBar(
        title: Text(
          'Privacy Policy',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        backgroundColor: AppColors.white1,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 8.h),

            Text(
              'Last updated: September 2026',
              style: TextStyle(fontSize: 12.sp, color: Colors.grey.shade600),
            ),

            SizedBox(height: 20.h),

            _policySection(
              title: '1. Introduction',
              content:
                  'We respect your privacy and are committed to protecting '
                  'your personal information. This Privacy Policy explains '
                  'how information is collected, used, and protected when '
                  'you use our application.',
            ),

            _policySection(
              title: '2. Information We Collect',
              content:
                  'We may collect information such as your name, email '
                  'address, phone number, shipping address, and account '
                  'information when you create an account or use our services.',
            ),

            _policySection(
              title: '3. How We Use Your Information',
              content:
                  'Your information may be used to manage your account, '
                  'process orders, provide customer support, improve the '
                  'application, and communicate important information about '
                  'your account or orders.',
            ),

            _policySection(
              title: '4. Account Information',
              content:
                  'You are responsible for keeping your account credentials '
                  'secure. Please do not share your password or other login '
                  'information with anyone.',
            ),

            _policySection(
              title: '5. Payment Information',
              content:
                  'Payment information is used only for processing purchases '
                  'through the supported payment process. We do not '
                  'intentionally store sensitive payment details such as '
                  'complete card numbers in the application.',
            ),

            _policySection(
              title: '6. Data Security',
              content:
                  'We take reasonable measures to protect your personal '
                  'information from unauthorized access, modification, '
                  'disclosure, or misuse.',
            ),

            _policySection(
              title: '7. Third-Party Services',
              content:
                  'The application may use third-party services for '
                  'authentication, analytics, payment processing, or other '
                  'features. These services may process information according '
                  'to their own privacy policies.',
            ),

            _policySection(
              title: '8. Your Privacy Rights',
              content:
                  'You may have the right to access, update, or request '
                  'deletion of your personal information, depending on the '
                  'applicable laws and regulations.',
            ),

            _policySection(
              title: '9. Changes to This Policy',
              content:
                  'We may update this Privacy Policy from time to time. '
                  'Any changes will be reflected on this page with an updated '
                  'date.',
            ),

            _policySection(
              title: '10. Contact Us',
              content:
                  'If you have any questions or concerns about this Privacy '
                  'Policy, please contact our support team through the '
                  'application.',
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _policySection({required String title, required String content}) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 14.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 8.h),

          Text(
            content,
            style: TextStyle(
              fontSize: 13.sp,
              height: 1.5,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
