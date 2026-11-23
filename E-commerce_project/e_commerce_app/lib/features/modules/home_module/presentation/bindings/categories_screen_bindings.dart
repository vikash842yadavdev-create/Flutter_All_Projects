import 'package:e_commerce_app/features/modules/home_module/presentation/controller/categories_screen_controller.dart';
import 'package:get/get.dart';

class CategoriesScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesScreenController>(() => CategoriesScreenController());
  }
}
