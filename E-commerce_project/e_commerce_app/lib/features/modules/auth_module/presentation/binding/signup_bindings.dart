import 'package:e_commerce_app/features/modules/auth_module/presentation/controler/signup_controller.dart';
import 'package:get/get.dart';

class SignupBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
