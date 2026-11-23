import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/profile_screen_controller.dart';
import 'package:get/get.dart';

class ProfileScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileScreenController>(() => ProfileScreenController());
  }
}
