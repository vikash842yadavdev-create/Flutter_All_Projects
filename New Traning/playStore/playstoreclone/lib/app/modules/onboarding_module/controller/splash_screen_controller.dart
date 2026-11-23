import 'package:get/get.dart';
import 'package:playstoreclone/app/routes/app_routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    print('Splash Controller Initialized');

    Future.delayed(const Duration(seconds: 3), () {
      print('Navigating to Home');
      Get.offAllNamed(Routes.mainScreen);
    });
  }
}
