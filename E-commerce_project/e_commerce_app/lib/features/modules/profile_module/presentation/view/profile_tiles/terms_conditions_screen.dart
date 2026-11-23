import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white1,
      appBar: AppBar(
        title: Text(
          'Terms & Conditions',
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
              'Terms & Conditions',
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

            _termsSection(
              title: '1. Acceptance of Terms',
              content:
                  'By using this application, you agree to follow these '
                  'Terms & Conditions. If you do not agree with any of these '
                  'terms, please do not use the application.',
            ),

            _termsSection(
              title: '2. Use of the Application',
              content:
                  'You agree to use the application only for lawful purposes. '
                  'You must not use the application in a way that may harm '
                  'the application, its users, or its services.',
            ),

            _termsSection(
              title: '3. User Account',
              content:
                  'You may need to create an account to access certain '
                  'features. You are responsible for providing accurate '
                  'information and keeping your account credentials secure.',
            ),

            _termsSection(
              title: '4. Products and Prices',
              content:
                  'Product information, availability, images, and prices may '
                  'change from time to time. We reserve the right to update '
                  'product details or prices without prior notice.',
            ),

            _termsSection(
              title: '5. Orders',
              content:
                  'When you place an order, you agree to provide accurate '
                  'information required for processing and delivery. Orders '
                  'may be cancelled or rejected in certain circumstances, '
                  'including product unavailability or incorrect information.',
            ),

            _termsSection(
              title: '6. Payments',
              content:
                  'You agree to provide valid payment information when '
                  'required. All payments must be completed through the '
                  'available payment methods provided by the application.',
            ),

            _termsSection(
              title: '7. Shipping and Delivery',
              content:
                  'Delivery times may vary depending on the delivery '
                  'location, product availability, and other circumstances. '
                  'We are not responsible for delays caused by circumstances '
                  'outside our reasonable control.',
            ),

            _termsSection(
              title: '8. Returns and Refunds',
              content:
                  'Returns and refunds are subject to the applicable return '
                  'and refund policy of the application. Products may need to '
                  'meet specific conditions to qualify for a return or refund.',
            ),

            _termsSection(
              title: '9. Intellectual Property',
              content:
                  'All application content, including text, graphics, logos, '
                  'designs, and other materials, belongs to the application '
                  'owner or its respective licensors and may not be used '
                  'without permission.',
            ),

            _termsSection(
              title: '10. Limitation of Liability',
              content:
                  'We aim to provide reliable services, but we do not '
                  'guarantee that the application will always be available, '
                  'error-free, or completely secure.',
            ),

            _termsSection(
              title: '11. Changes to Terms',
              content:
                  'We may update these Terms & Conditions from time to time. '
                  'Updated terms will be displayed on this page. Continued '
                  'use of the application after changes means that you accept '
                  'the updated terms.',
            ),

            _termsSection(
              title: '12. Contact Us',
              content:
                  'If you have any questions about these Terms & Conditions, '
                  'please contact our support team through the application.',
            ),

            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _termsSection({required String title, required String content}) {
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
