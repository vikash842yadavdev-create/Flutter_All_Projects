import 'package:e_commerce_app/features/modules/home_module/presentation/controller/product_detail_screen_controller.dart';
import 'package:get/get.dart';

class ProductDetailsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailScreenController>(() => ProductDetailScreenController());
  }
}
