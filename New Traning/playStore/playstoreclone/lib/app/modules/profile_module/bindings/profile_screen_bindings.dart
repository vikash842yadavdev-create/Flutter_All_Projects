import 'package:get/instance_manager.dart';
import 'package:playstoreclone/app/modules/profile_module/controller/profile_screen_controller.dart';

class ProfileScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileScreenController>(() => ProfileScreenController());
  }
}
