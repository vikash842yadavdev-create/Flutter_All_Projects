import 'package:flutterfirebasenew/features/modules/onboarding_module/presentation/controller/splash_view_controller.dart';
import 'package:get/instance_manager.dart';

class SplashViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashViewController>(() => SplashViewController());
  }
}
