import 'package:flutter/material.dart';
import 'package:get_x/state_manager.dart';
import 'package:newproject001/app/modules/home_module/models/user_profile_model.dart';
import 'package:newproject001/app/modules/home_module/views/dio_api_service_profile.dart';

class ProfileScreenController extends GetxController {
  final DioApiServiceProfile apiServiceProfile = DioApiServiceProfile();

  List<UserProfileModel> userData = [];

  @override
  void onInit() {
    super.onInit();
    getUserDetails();
  }

  Future<void> getUserDetails() async {
    try {
      final response = await apiServiceProfile.getData();
      final List<dynamic> users = response.data['users'];
      debugPrint('------------------Users: $users');
      userData = users
          .map(
            (user) => UserProfileModel.fromJson(user as Map<String, dynamic>),
          )
          .toList();

      update();
    } catch (e) {
      debugPrint('ERROR: $e');
    }
  }

  void clickGetFunction() {
    getUserDetails();
  }
}
