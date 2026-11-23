import 'package:get_x/get.dart';
import 'package:newproject001/app/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(Routes.loginScreen);
    });
  }
}
