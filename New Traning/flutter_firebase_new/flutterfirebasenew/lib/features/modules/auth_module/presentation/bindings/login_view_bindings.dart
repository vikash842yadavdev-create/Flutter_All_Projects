import 'package:flutterfirebasenew/features/modules/auth_module/presentation/controller/login_view_controller.dart';
import 'package:get/get.dart';

class LoginViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginViewController>(() => LoginViewController());
  }
}
