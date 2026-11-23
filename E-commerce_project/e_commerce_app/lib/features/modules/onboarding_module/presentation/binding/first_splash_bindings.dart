import 'package:e_commerce_app/features/modules/onboarding_module/presentation/controler/first_splash_controller.dart';
import 'package:get/instance_manager.dart';

class FirstSplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirstSplashController>(() => FirstSplashController());
  }
}
