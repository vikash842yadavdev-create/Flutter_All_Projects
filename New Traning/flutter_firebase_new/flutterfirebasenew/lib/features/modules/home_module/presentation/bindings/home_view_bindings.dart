import 'package:flutterfirebasenew/features/modules/home_module/presentation/controller/home_view_controller.dart';
import 'package:get/instance_manager.dart';

class HomeViewBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewController>(() => HomeViewController());
  }
}
