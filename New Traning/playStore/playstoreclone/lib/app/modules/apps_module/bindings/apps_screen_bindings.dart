import 'package:get/instance_manager.dart';
import 'package:playstoreclone/app/modules/apps_module/controller/apps_screeen_controller.dart';

class AppsScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppsScreeenController>(() => AppsScreeenController());
  }
}
