import 'package:e_commerce_app/features/modules/home_module/presentation/controller/all_product_screen_controller.dart';
import 'package:get/get.dart';

class AllProductsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllProductScreenController>(() => AllProductScreenController());
  }
}
