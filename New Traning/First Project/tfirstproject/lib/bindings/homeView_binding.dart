import 'package:get/get.dart';
import 'package:tfirstproject/controller/home_view_controller.dart';

class HomeviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(() => HomeViewController());
  }
}
