import 'package:get/instance_manager.dart';
import 'package:playstoreclone/app/modules/onboarding_module/controller/splash_screen_controller.dart';

class SplashScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}
