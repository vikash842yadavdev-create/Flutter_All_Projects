import 'package:e_commerce_app/features/modules/auth_module/presentation/controler/login_screen_controller.dart';
import 'package:get/get.dart';

class LoginScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginScreenController>(() => LoginScreenController());
  }
}
