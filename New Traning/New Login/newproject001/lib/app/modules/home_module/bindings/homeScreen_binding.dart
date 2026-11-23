import 'package:get_x/get.dart';
import 'package:newproject001/app/modules/home_module/controller/homeScreen_controller.dart';

class HomescreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomescreenController>(() => HomescreenController());
  }
}
