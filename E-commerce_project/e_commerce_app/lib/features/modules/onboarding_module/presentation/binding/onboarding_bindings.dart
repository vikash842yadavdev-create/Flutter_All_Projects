import 'package:e_commerce_app/features/modules/onboarding_module/presentation/controler/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
