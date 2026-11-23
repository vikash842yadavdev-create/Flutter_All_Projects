import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/profile_screen_controller.dart';

class ProfileScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileScreenController>(() => ProfileScreenController());
  }
}
