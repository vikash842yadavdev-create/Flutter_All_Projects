import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
import 'package:e_commerce_app/features/data/models/profile_tile_model.dart';
import 'package:e_commerce_app/features/data/models/user_profile_model.dart';
import 'package:e_commerce_app/features/data/services/api_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getUserData();
  }

  final ApiServices apiServices = ApiServices();
  UserProfileModel? userData;

  Future<void> getUserData() async {
    try {
      final response = await apiServices.getUserProfileData();

      userData = UserProfileModel.fromJson(
        response.data as Map<String, dynamic>,
      );

      update();
    } on DioException catch (e) {
      debugPrint('Dio Error: $e');
    }
  }

  final List<ProfileTileModel> accountItems = [
    ProfileTileModel(
      title: 'Personal Details',
      icon: Icons.person,
      onTap: () {
        Get.toNamed(AppRoutes.personalDetailsScreen);
      },
    ),
    ProfileTileModel(
      title: 'My Order',
      icon: Icons.shopping_bag,
      onTap: () {
        debugPrint('My Order clicked');
      },
    ),
    ProfileTileModel(
      title: 'My Favourites',
      icon: Icons.favorite,
      onTap: () {
        Get.toNamed(AppRoutes.favouritesScreen);
      },
    ),
    ProfileTileModel(
      title: 'Shipping Address',
      icon: Icons.local_shipping,
      onTap: () {
        Get.toNamed(AppRoutes.shippingAddressScreen);
      },
    ),
    ProfileTileModel(
      title: 'My Card',
      icon: Icons.credit_card,
      onTap: () {
        debugPrint('My Card clicked');
      },
    ),
    ProfileTileModel(
      title: 'Settings',
      icon: Icons.settings,
      onTap: () {
        Get.toNamed(AppRoutes.settingsScreen);
      },
    ),
  ];

  final List<ProfileTileModel> informationItems = [
    ProfileTileModel(
      title: 'FAQs',
      icon: Icons.error,
      onTap: () {
        Get.toNamed(AppRoutes.faqScreen);
      },
    ),
    ProfileTileModel(
      title: 'Privacy Policy',
      icon: Icons.verified_user,
      onTap: () {
        Get.toNamed(AppRoutes.privacyPolicyScreen);
      },
    ),
    ProfileTileModel(
      title: 'Terms & Conditions',
      icon: Icons.description,
      onTap: () {
        Get.toNamed(AppRoutes.termsConditionsScreen);
      },
    ),
  ];

  Future<void> logout() async {
    await SharedPref.clearAccessToken();
    // await SharedPref.setUser({});

    Get.offAllNamed(AppRoutes.loginScreen);
  }
}
