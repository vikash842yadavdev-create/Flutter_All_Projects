import 'package:e_commerce_app/features/config/routes/app_routes.dart';
import 'package:get/get.dart';

class StartShoppingController extends GetxController {
  void goMain() {
    Get.toNamed(AppRoutes.mainScreen);
  }
}
