import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/api_screen_controller.dart';

class ApiScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiScreenController>(() => ApiScreenController());
  }
}
