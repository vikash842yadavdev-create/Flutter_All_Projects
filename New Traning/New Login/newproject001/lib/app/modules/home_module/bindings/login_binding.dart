import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
