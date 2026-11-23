import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}
