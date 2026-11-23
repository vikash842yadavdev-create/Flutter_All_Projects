import 'package:e_commerce_app/features/modules/home_module/presentation/controller/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }
}
