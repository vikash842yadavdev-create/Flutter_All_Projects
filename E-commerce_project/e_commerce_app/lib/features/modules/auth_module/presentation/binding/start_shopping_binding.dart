import 'package:e_commerce_app/features/modules/auth_module/presentation/controler/start_shopping_controller.dart';
import 'package:get/get.dart';

class StartShoppingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartShoppingController>(() => StartShoppingController());
  }
}
