import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:e_commerce_app/features/core/localdata/shared_pref.dart';
import 'package:get/get.dart';

class FirstSplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initializeApp();
  }

  Future<void> initializeApp() async {
    // final bool isLoggedIn = await SharedPref.getLoggedIn();
    final String? accessToken = await SharedPref.getAccessToken();

    await Future.delayed(const Duration(seconds: 3));
    if (accessToken != '') {
      Get.offAllNamed(AppRoutes.mainScreen);
    } else {
      Get.offAllNamed(AppRoutes.onboardingScreen);
    }
  }
}
