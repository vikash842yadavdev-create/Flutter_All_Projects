import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterfirebasenew/features/config/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashViewController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    gotoNextScreen();
  }

  void gotoNextScreen() {
    final user = _auth.currentUser;

    Future.delayed(const Duration(seconds: 3), () {
      if (user != null) {
        Get.offNamed(AppRoutes.homeView);
      } else {
        Get.offNamed(AppRoutes.loginView);
      }
    });
  }
}
