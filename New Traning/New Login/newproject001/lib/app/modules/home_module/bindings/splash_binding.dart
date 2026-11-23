import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
