import 'package:get_x/get.dart';
import 'package:stlessstfull/Controller/homepagecontroller.dart';

class Homepagebinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Homepagecontroller());
  }
}
