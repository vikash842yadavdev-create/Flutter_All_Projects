import 'package:get/get.dart';
import 'package:playstoreclone/app/modules/search_module/controller/search_screen_controller.dart';

class SearchScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchScreenController>(() => SearchScreenController());
  }
}
