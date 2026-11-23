import 'package:flutterfirebasenew/features/modules/auth_module/presentation/controller/signup_view_controller.dart';
import 'package:get/instance_manager.dart';

class SignupViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupViewController>(() => SignupViewController());
  }
}
