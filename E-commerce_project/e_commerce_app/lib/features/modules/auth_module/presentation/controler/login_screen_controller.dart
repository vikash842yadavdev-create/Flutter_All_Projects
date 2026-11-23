// import 'package:e_commerce_app/features/config/routes/app_routes.dart';
// import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
// import 'package:e_commerce_app/features/modules/common_widgets/get_snackbar.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LoginScreenController extends GetxController {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   List<Map<String, dynamic>> userList = [];

//   @override
//   void onInit() {
//     super.onInit();
//     getUserList();
//   }

//   Future<void> getUserList() async {
//     userList = await SharedPref.getUserList();
//     update();
//   }

//   void goToSignUpScreen() {
//     Get.toNamed(AppRoutes.signUpScreen);
//   }

//   Future<void> login({required String email, required String password}) async {
//     final String emailValue = email.trim().toLowerCase();

//     if (emailValue.isEmpty) {
//       CustomGetSnackBar.error(
//         title: 'Error',
//         message: 'Please enter email',
//         position: 'top',
//       );
//       return;
//     }

//     if (!GetUtils.isEmail(emailValue)) {
//       CustomGetSnackBar.error(
//         title: 'Error',
//         message: 'Please enter valid email',
//         position: 'top',
//       );
//       return;
//     }

//     if (password.isEmpty) {
//       CustomGetSnackBar.error(
//         title: 'Error',
//         message: 'Please enter password',

//         position: 'top',
//       );
//       return;
//     }

//     if (userList.isEmpty) {
//       CustomGetSnackBar.error(
//         title: 'Error',
//         message: 'Email does not exist. Please Sign Up First',
//         position: 'top',
//       );
//       return;
//     }

//     final int userIndex = userList.indexWhere(
//       (user) => user['email']?.toString().toLowerCase() == emailValue,
//     );

//     if (userIndex == -1) {
//       CustomGetSnackBar.error(
//         title: 'Error',
//         message: 'Email does not exist. Please Sign Up First',
//         position: 'top',
//       );
//       return;
//     }

//     final Map<String, dynamic> user = userList[userIndex];

//     if (user['password'] != password) {
//       CustomGetSnackBar.error(
//         title: 'Error',
//         message: 'Incorrect password',
//         position: 'top',
//       );
//       return;
//     }

//     await SharedPref.setUser(user);
//     await SharedPref.setLoggedIn(true);

//     CustomGetSnackBar.success(
//       title: 'Successful',
//       message: 'You logged in successfully',
//       position: 'top',
//     );

//     Get.offAllNamed(AppRoutes.startShoppingScreen);
//   }

//   @override
//   void onClose() {
//     emailController.dispose();
//     passwordController.dispose();
//     super.onClose();
//   }
// }

import 'package:dio/dio.dart';
import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/core/constants/api_constants.dart';
import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
import 'package:e_commerce_app/features/data/services/api_services.dart';
import 'package:e_commerce_app/features/modules/common_widgets/get_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String accessToken = '';

  final ApiServices apiServices = ApiServices();

  void goToSignUpScreen() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    debugPrint('Username:$userName');
    debugPrint('Password:$password');
    if (userName.trim().isEmpty) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please Enter UserName',
        position: 'top',
      );
      return;
    }

    if (password.isEmpty) {
      CustomGetSnackBar.error(
        title: 'Error',
        message: 'Please Enter Password',
        position: 'top',
      );
      return;
    }
    try {
      final response = await apiServices.postUserLogin(
        endpoint: ApiConstants.authLoginUrl,
        userName: userName,
        password: password,
      );
      accessToken = response.data['accessToken'];

      debugPrint('Response: ${response.data}');
      debugPrint('FirstName: ${response.data['userName']}');
      debugPrint('Password: ${response.data['password']}');
      debugPrint('StatusCode: ${response.statusCode}');

      if (response.statusCode == 200) {
        CustomGetSnackBar.success(
          title: 'Success',
          message: 'Login Successfully',
          position: 'top',
        );

        await SharedPref.setAccessToken(accessToken);

        Get.offAllNamed(AppRoutes.startShoppingScreen);
      }
    } on DioException catch (e) {
      CustomGetSnackBar.error(
        title: 'Login Failed',
        message: 'Invalid username or password',
        position: 'top',
      );

      debugPrint('Login Error: ${e.message}');
    }
  }
}
