import 'package:e_commerce_app/features/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final faqs = [
      {
        'question': 'How can I place an order?',
        'answer':
            'Browse the products, select the product you want to buy, '
            'add it to your cart, and continue to checkout to place your order.',
      },
      {
        'question': 'How can I track my order?',
        'answer': 'You can track your order from the My Order section in your profile.',
      },
      {
        'question': 'Can I cancel my order?',
        'answer': 'Yes, you can cancel an order if it has not been processed or shipped yet.',
      },
      {
        'question': 'How can I change my shipping address?',
        'answer': 'You can manage your saved shipping addresses from the Shipping Address section in your profile.',
      },
      {
        'question': 'What payment methods are available?',
        'answer': 'You can use the available payment methods shown during checkout to complete your purchase.',
      },
      {
        'question': 'How can I add a product to favourites?',
        'answer': 'Tap the heart icon on a product card to add or remove the product from your favourites.',
      },
      {
        'question': 'Can I return a product?',
        'answer': 'Return availability depends on the product and the applicable return policy.',
      },
      {
        'question': 'How can I contact support?',
        'answer': 'You can contact customer support for assistance with orders, payments, or other account-related issues.',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.white1,

      appBar: AppBar(
        backgroundColor: AppColors.white1,
        elevation: 0,
        scrolledUnderElevation: 0,

        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 18.sp,
            color: Colors.black,
          ),
        ),

        title: Text(
          'FAQs',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),

        centerTitle: true,
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              'Find answers to common questions about our fashion app.',
              style: TextStyle(fontSize: 11.sp, color: Colors.grey.shade600),
            ),

            SizedBox(height: 20.h),

            ...faqs.map((faq) {
              return _faqTile(
                question: faq['question']!,
                answer: faq['answer']!,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _faqTile({required String question, required String answer}) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Theme(
        data: ThemeData(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 2.h),
          childrenPadding: EdgeInsets.only(
            left: 15.w,
            right: 15.w,
            bottom: 15.h,
          ),

          iconColor: Colors.black,
          collapsedIconColor: Colors.black,

          title: Text(
            question,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),

          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                answer,
                style: TextStyle(
                  fontSize: 11.sp,
                  height: 1.5,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
