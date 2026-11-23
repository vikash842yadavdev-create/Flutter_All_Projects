import 'package:e_commerce_app/features/modules/cart_module/presentation/controller/cart_screen_controller.dart';
import 'package:get/get.dart';

class CartScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartScreenController>(() => CartScreenController());
  }
}
