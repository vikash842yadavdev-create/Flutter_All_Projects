import 'package:get/get.dart';
import 'package:playstoreclone/app/modules/main_module/controller/main_screen_controller.dart';

class MainScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController());
  }
}
