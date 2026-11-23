import 'package:e_commerce_app/features/modules/cart_module/presentation/controller/cart_screen_controller.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/home_screen_controller.dart';
import 'package:e_commerce_app/features/modules/home_module/presentation/controller/main_screen_controller.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/favourites_screen_controller.dart';
import 'package:e_commerce_app/features/modules/profile_module/presentation/controller/profile_screen_controller.dart';
import 'package:get/get.dart';

class MainScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainScreenController>(() => MainScreenController());
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
    Get.put<CartScreenController>(CartScreenController(), permanent: true);
    Get.lazyPut<ProfileScreenController>(() => ProfileScreenController());
    Get.put(FavouritesScreenController(), permanent: true);
  }
}
