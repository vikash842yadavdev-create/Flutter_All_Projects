import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  void login() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  void signUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
